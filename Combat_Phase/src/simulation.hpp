#pragma once

#include "battle.hpp"
#include <vector>
#include <array>
#include <algorithm>
using std::vector;

// -----------------------------------------------------------------------------
// Simulation
// -----------------------------------------------------------------------------

const int DEFAULT_NUM_RUNS = 1000;

enum class Flipped { Flipped };

struct ScoreSummary {
  int num_runs = 0;
  int total_stars[2] = {0}; // #stars by which player i has won
  int damage_taken[2] = {0};
  int num_wins[2] = {0};
  int num_deaths[2] = {0};

  ScoreSummary() {}
  ScoreSummary(ScoreSummary const& stats, Flipped flipped)
    : num_runs(stats.num_runs)
    , total_stars{stats.total_stars[1],stats.total_stars[0]}
    , damage_taken{stats.damage_taken[1],stats.damage_taken[0]}
    , num_wins{stats.num_wins[1],stats.num_wins[0]}
    , num_deaths{stats.num_deaths[1],stats.num_deaths[0]}
  {}

  ScoreSummary flipped() const {
    return ScoreSummary(*this,Flipped::Flipped);
  }

  int num_draws() const {
    return num_runs - num_wins[0] - num_wins[1];
  }
  double draw_rate() const {
    return (double)num_draws() / num_runs;
  }
  double win_rate(int player) const {
    return (double)num_wins[player] / num_runs;
  }
  double balanced_win_rate(int player=0) const {
    return win_rate(player) + draw_rate() * 0.5;
  }
  double death_rate(int player) const {
    return (double)num_deaths[player] / num_runs;
  }
  double mean_damage_taken(int player) const {
    return (double)damage_taken[player] / num_runs;
  }
  double mean_score() const {
    return (double)(total_stars[0] - total_stars[1]) / num_runs;
  }
  double damage_score() const {
    return mean_damage_taken(1) / 7.0 - mean_damage_taken(0);
  }

  void add_run(Battle const& b) {
    num_runs++;
    int stars[2] = {b.board[0].total_stars(), b.board[1].total_stars()};
    if ((stars[0] > 0) != (stars[1] > 0)) {
      // only one player has minions remaining (and therefore stars)
      int winner = stars[0] > 0 ? 0 : 1;
      int loser = 1-winner;
      num_wins[winner]++;
      total_stars[winner] += stars[winner];
      int dmg = stars[winner] + b.board[winner].level;
      damage_taken[loser] += dmg;
      if (dmg >= b.board[loser].health) {
        num_deaths[loser]++;
      }
    }
    // otherwise, both players have minions remaining, or neither has minions, game is a draw
  }
};

inline int simulate_single(Board const& player0, Board const& player1, ScoreSummary& stats, BattleRNG& rng) {
  Battle battle(player0, player1, nullptr, rng);
  battle.run();
  stats.add_run(battle);
  return battle.score();
}

ScoreSummary simulate(Board const& player0, Board const& player1, int n = DEFAULT_NUM_RUNS, vector<int>* out = nullptr, RNG& rng = global_rng) {
  ScoreSummary stats;
  BattleRNG the_rng(rng);
  if (out) out->reserve(out->size() + n);
  for (int i=0; i<n; ++i) {
    the_rng.start();
    int score = simulate_single(player0, player1, stats, the_rng);
    if (out) out->push_back(score);
  }
  if (out) std::sort(out->begin(), out->end());
  return stats;
}
ScoreSummary simulate_deterministic(Board const& player0, Board const& player1, RNG const& rng, int n = DEFAULT_NUM_RUNS, vector<int>* out = nullptr) {
  RNG rng_copy = rng; // copy the rng for repeatability
  return simulate(player0, player1, n, out, rng_copy);
}

// -----------------------------------------------------------------------------
// Statistics
// -----------------------------------------------------------------------------

template <typename T>
double mean(vector<T> const& xs) {
  // work around emscripten bug (missing accumulate function)
  //return std::accumulate(xs.begin(), xs.end(), 0.) / xs.size();
  double sum = 0.;
  for(auto x : xs) sum += x;
  return sum / std::max(1, (int)xs.size());
}

template <typename T>
double variance(vector<T> const& xs) {
  double m = mean(xs);
  double sum = 0.;
  for(auto x : xs) sum += (x-m)*(x-m);
  return sum / std::max(1, (int)xs.size()-1);
}

double mean_damage_taken(vector<int> const& xs, int enemy_level, int sign = 1) {
  double sum = 0.;
  for(int x : xs) if (sign*x < 0) sum += enemy_level - sign*x;
  return sum / xs.size();
}

double mean_damage_dealt(vector<int> const& xs, int level) {
  return mean_damage_taken(xs,level,-1);
}

double death_rate(vector<int> const& results, int enemy_level, int health, int sign = 1) {
  int deaths = 0;
  for(int x : results) if (sign*x < 0 && (enemy_level - sign*x) >= health) deaths++;
  return (double)deaths / results.size();
}

int percentile(int i, vector<int> const& results) {
  auto bounds = equal_range(results.begin(), results.end(), i);
  int a = static_cast<int>(bounds.first - results.begin());
  int b = static_cast<int>(bounds.second - results.begin());
  return 100 * (a + b) / 2 / (results.size() - 1);
}

// -----------------------------------------------------------------------------
// Optimization objectives
// -----------------------------------------------------------------------------

enum class Objective {
  Score,
  WinRate,
  DamageTaken,
  DeathRate,
};
const int NUM_OBJECTIVES=4;

double objective_value(Objective objective, ScoreSummary const& stats) {
  switch(objective) {
    case Objective::Score:       return stats.mean_score();
    case Objective::WinRate:     return stats.balanced_win_rate(0);
    case Objective::DamageTaken: return -stats.mean_damage_taken(0);
    case Objective::DeathRate:   return -stats.death_rate(0);
    default: return 0;
  }
}

const char* name(Objective objective) {
  switch(objective) {
    case Objective::Score:       return "star difference";
    case Objective::WinRate:     return "win rate";
    case Objective::DamageTaken: return "damage taken";
    case Objective::DeathRate:   return "death rate";
    default: return "";
  }
}

struct Percentage {
  double p;
};
// output a number between 0 and 1 as a percentage
inline Percentage percentage(double p) { return {p}; }
inline ostream& operator << (ostream& out, Percentage p) {
  out.setf(std::ios::fixed, std:: ios::floatfield);
  out.precision(1);
  return out << (100*p.p) << "%";
}

void display_objective_value(ostream& out, Objective objective, double score) {
  out.setf(std::ios::fixed, std:: ios::floatfield);
  switch(objective) {
    case Objective::Score:
      out.precision(3);
      out << score;
      return;
    case Objective::WinRate:
      out << percentage(score);
      return;
    case Objective::DamageTaken:
      out.precision(3);
      out << -score;
      return;
    case Objective::DeathRate:
      out << percentage(-score);
      return;
  }
}

// -----------------------------------------------------------------------------
// Minion order optimization
// -----------------------------------------------------------------------------

void permute_minions(Board& board, Minion const original[], int const perm[], int n) {
  // note: original != board.minions
  for (int i=0; i<n; ++i) {
    board.minions[i] = original[perm[i]];
  }
}
inline Board permute_minions(Board const& original, int const perm[], int n) {
  Board board = original;
  permute_minions(board, &original.minions[0], perm, n);
  return board;
}

struct OptimizeMinionOrder {
  std::array<int,BOARDSIZE> best_order;
  double current_score;
  double best_score;
  int n;
  
  OptimizeMinionOrder(Board const& board, Board const& enemy, Objective objective, int budget = DEFAULT_NUM_RUNS, RNG& rng = global_rng) {
    n = board.minions.size();
    // number of permutations
    int nperm = 1;
    for (int i=1; i<=n; ++i) nperm *= i;
    int runs = max(10, min(budget, budget * 50 / nperm));
    int full_runs = budget;
    // current situation
    std::array<int,BOARDSIZE> order;
    for (int i=0; i<n; ++i) order[i] = i;
    current_score = objective_value(objective, simulate_deterministic(board, enemy, rng, full_runs));
    best_score = current_score;
    best_order = order;
    // optimize over all permutations
    do {
      Board const& permuted = permute_minions(board, order.data(), n);
      double score = objective_value(objective, simulate_deterministic(permuted, enemy, rng, runs));
      if (score > best_score) {
        best_score = score;
        best_order = order;
      }
    } while (std::next_permutation(order.begin(), order.begin() + n));
    // re-check with full number of runs, also to avoid multiple-testing bias
    if (runs < full_runs && best_score > current_score) {
      Board const& permuted = permute_minions(board, best_order.data(), n);
      best_score = objective_value(objective, simulate_deterministic(permuted, enemy, rng, full_runs));
    }
    rng.jump();
  }
};

// -----------------------------------------------------------------------------
// Minion buff optimization
// -----------------------------------------------------------------------------

struct OptimizeMinionBuffPlacement {
  double scores[BOARDSIZE];
  double current_score;
  double best_score;
  
  OptimizeMinionBuffPlacement(Board const& board, Board const& enemy, Minion const& buff, Objective objective, int budget = DEFAULT_NUM_RUNS, RNG& rng = global_rng) {
    int full_runs = budget;
    // current situation
    current_score = objective_value(objective, simulate_deterministic(board, enemy, rng, full_runs));
    best_score = current_score;
    // optimize over all placements
    board.minions.for_each_with_pos([&](int i, Minion const&) {
      Board new_board = board;
      new_board.minions[i].buff(buff);
      double score = objective_value(objective, simulate_deterministic(new_board, enemy, rng, full_runs));
      scores[i] = score;
      if (i == 0 || score > best_score) {
        best_score = score;
      }
    });
    rng.jump();
  }
};

