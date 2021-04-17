import subprocess
from pathlib import Path

SIMULATOR_PATH = Path(__file__).parent / 'hsbg.exe'

class Combat:

    def __init__(self, friendly_board, enemy_board):
        combat = self.run_combat(self.generate_temp_file(friendly_board, enemy_board))
        print(combat)

    def generate_temp_file(self, friendly_board, enemy_board):
        temp = open("temp_combat.txt", "w")
        temp.write("board\n")

        for m in friendly_board:
            temp.write("* " + repr(m) + "\n")

        temp.write("Vs\n")

        for m in enemy_board:
            temp.write("* " + repr(m) + "\n")

        temp.write("show")

        temp.close()

        return "temp_combat.txt"

    def run_combat(self, file_path):
        process = subprocess.Popen([SIMULATOR_PATH, file_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, _ = map(lambda x: x.decode(), process.communicate())

        return stdout
