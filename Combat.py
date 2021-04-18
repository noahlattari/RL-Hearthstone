"""
This class uses a simulator of the combat phase in Hearthstone Battlegrounds.
The simulator requires gcc g++ to be installed and can only be ran on windows as it's an executable file.
More information can be found in the README.
"""

import subprocess
import re
import os

from pathlib import Path

SIMULATOR_PATH = Path(__file__).parent / 'hsbg.exe'

class Combat:

    def __init__(self, friendly_board, enemy_board):
        self.combat = self.run_combat(self.generate_temp_file(friendly_board, enemy_board))
        self.win_probability = self.get_field('win', value_suffix='%') / 100
        self.tie_probability = self.get_field('tie', value_suffix='%') / 100
        self.lose_probability = self.get_field('lose', value_suffix='%') / 100
        self.mean_score = self.get_field('mean score')
        self.median_score = self.get_field('median score')
        self.mean_damage_taken = self.get_field('mean damage taken')
        self.mean_damage_dealt = self.get_field('mean damage dealt')

    def generate_temp_file(self, friendly_board, enemy_board):
        temp = open("temp_combat.txt", "w")
        temp.write("board\n")

        for m in friendly_board:
            temp.write("* " + repr(m) + "\n")

        temp.write("vs\n")

        for m in enemy_board:
            temp.write("* " + repr(m) + "\n")

        temp.write("show")

        temp.close()

        return "temp_combat.txt"

    def run_combat(self, file_path):
        process = subprocess.Popen([SIMULATOR_PATH, file_path], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        stdout, _ = map(lambda x: x.decode(), process.communicate())

        os.remove(file_path)

        return stdout

    def get_field(self, name, value_suffix=''):
        pattern = r'(?<={}:\s)-?\d+.?\d*{}'.format(name, value_suffix)
        match = re.search(pattern, self.combat)
        if match is None:
            raise ValueError(f'Could not parse field with name \'{name}\' in:\n{self.combat}')
        return float(match.group(0).replace(value_suffix, '').strip())
