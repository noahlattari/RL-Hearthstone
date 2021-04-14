import pytest
import Player
import Pool
import Minion

#need to pip install pytest, run tests with python -m pytest
#TODO: test the basics: buy, sell, reroll, round start/end
#def test_buy():
#def test_sell():
#etc ...

def test_alleycat():
    pool = Pool.Pool()
    player = Player.Player(pool)

    alleycat = Minion.Minion("Alleycat", 1, 1, "Beast", 1)
    tabbycat = Minion.Minion("Tabbycat", 1, 1, "Beast", 1, token=True)

    player.hand = [alleycat]
    player.board = []

    #play the minion in index 0 of our hand to index 0 on the board
    player.play(0, 0)

    expected_board = [alleycat, tabbycat]

    assert str(player.board) == str(expected_board)

def test_alleycat_gold():
    pool = Pool.Pool()
    player = Player.Player(pool)

    alleycat = Minion.Minion("Alleycat", 2, 2, "Beast", 1, gold=True)
    tabbycat = Minion.Minion("Tabbycat", 2, 2, "Beast", 1, token=True, gold=True)

    player.hand = [alleycat]
    player.board = []

    #play the minion in index 0 of our hand to index 0 on the board
    player.play(0, 0)

    expected_board = [alleycat, tabbycat]

    assert str(player.board) == str(expected_board)

def test_menagerie_mug():
    pool = Pool.Pool()
    player = Player.Player(pool)

    m_mug = Minion.Minion("Menagerie Mug", 2, 2, "Neutral", 1)

    beast = Minion.Minion("Test Beast", 1, 1, "Beast", 1)
    demon = Minion.Minion("Test Demon", 1, 1, "Demon", 1)
    mech = Minion.Minion("Test Mech", 1, 1, "Mech", 1)

    player.board = [beast, demon, mech]
    player.hand = [m_mug]

    #play the minion in index 0 of our hand to index 1 on the board
    player.play(0, 1)

    buffed_beast = Minion.Minion("Test Beast", 2, 2, "Beast", 1)
    buffed_demon = Minion.Minion("Test Demon", 2, 2, "Demon", 1)
    buffed_mech = Minion.Minion("Test Mech", 2, 2, "Mech", 1)

    expected_board = [buffed_beast, m_mug, buffed_demon, buffed_mech]

    print(player.board)
    assert str(player.board) == str(expected_board)