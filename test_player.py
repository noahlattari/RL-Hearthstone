import pytest
import Player
import Pool
import Minion

#need to pip install pytest, run tests with python -m pytest
#TODO: test the basics: buy, sell, reroll, round start/end
#def test_buy():
#def test_sell():
#etc ...

def test_houndmaster():
    return

def test_rabid_saurolisk():
    return

def test_pack_leader(): 
    return

def test_wrath_weaver():
    return

def test_khadgar():
    pool = Pool.Pool()
    player = Player.Player(pool)

    khadgar1 = Minion.Minion("Khadgar", 2, 2, "Neutral", 3)
    khadgar2 = Minion.Minion("Khadgar", 2, 2, "Neutral", 3)

    alleycat = Minion.Minion("Alleycat", 1, 1, "Beast", 1)
    tabbycat = Minion.Minion("Tabbycat", 1, 1, "Beast", 1, token=True)

    player.hand = [khadgar1, khadgar2, alleycat]

    for i in range(len(player.hand)+1):
        player.play(0,-1) #will append played card to the board
    
    expected_board = [khadgar1, khadgar1, alleycat, tabbycat, tabbycat, tabbycat, tabbycat]

    assert str(player.board) == str(expected_board)

def test_alleycat():
    pool = Pool.Pool()
    player = Player.Player(pool)

    alleycat = Minion.Minion("Alleycat", 1, 1, "Beast", 1)
    tabbycat = Minion.Minion("Tabbycat", 1, 1, "Beast", 1, token=True)

    player.hand = [alleycat]

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

    #play the minion in index 0 of our hand to index 0 on the board
    player.play(0, 0)

    expected_board = [alleycat, tabbycat]

    assert str(player.board) == str(expected_board)

def test_deck_swabbie():
    pool = Pool.Pool()
    player = Player.Player(pool)

    deck_swabbie = Minion.Minion("Deck Swabbie", 2, 2, "Pirate", 1)

    player.hand = [deck_swabbie]

    #play the minion in index 0 of our hand to index 0 on the board
    player.play(0, 0)

    expected_discount = 1

    assert expected_discount == player.discount

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

def test_salty_looter():
    pool = Pool.Pool()
    player = Player.Player(pool)

    salty_looter = Minion.Minion("Salty Looter", 4, 4, "Pirate", 3)
    pirate = Minion.Minion("Test Pirate", 1, 1, "Pirate", 1)

    player.hand = [salty_looter, pirate]

    #play the minion in index 0 of our hand to index 1 on the board
    player.play(0, 0)
    player.play(0, 1)
    buffed_pirate = Minion.Minion("Test Pirate", 2, 2, "Pirate", 1)

    expected_board = [salty_looter, buffed_pirate]

    print(player.board)
    assert str(player.board) == str(expected_board)

def test_soul_devourer():
    pool = Pool.Pool()
    player = Player.Player(pool)

    soul_devourer = Minion.Minion("Soul Devourer", 3, 3, "Demon", 3)
    demon = Minion.Minion("Test demon", 1, 1, "Demon", 1)

    player.hand = [demon, soul_devourer]

    #play the minion in index 0 of our hand to index 1 on the board
    player.play(0, 0)
    player.play(0, 1)
    buffed_soul = Minion.Minion("Soul Devourer", 4, 4, "Demon", 3)

    expected_board = [buffed_soul]

    print(player.board)
    assert str(player.board) == str(expected_board)