import subprocess
from pathlib import Path

SIMULATOR_PATH = Path(__file__).parent / 'hsbg.exe'

class Combat:

    def __init__(self, friendly_board, enemy_board):
        combat = self.run_combat(self.generate_temp_file(friendly_board, enemy_board))

    def generate_temp_file(self, friendly_board, enemy_board):
        temp = open("temp_combat.txt", "w")
        temp.write("board\n")

        for m in friendly_board:
            temp.write("* " + m + "\n")

        temp.write("Vs\n")

        for m in enemy_board:
            temp.write("* " + m + "\n")

        temp.write("show")

        return

    def run_combat(self, file_path):
        process = subprocess.Popen([SIMULATOR_PATH, "tests/run2.txt"], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, _ = map(lambda x: x.decode(), process.communicate())

        return stdout
