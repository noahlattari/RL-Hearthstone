
class MinionVector:

    def __init__(self):
        self.vectors = dict()
        self.setup_vectors()

    def setup_vectors(self):
        names_file = open("card2vec_hsbg_10_metadata.tsv", "r")
        vectors_file = open("card2vec_hsbg_10.tsv", "r")

        names = []
        vectors = []

        for name in names_file:
            names.append(name)

        for vector in vectors_file:
            vectors.append(vector)

        if len(names) != len(vectors):
            raise Exception('Names and Vectors file are not of same size')

        for i in range(0, len(names)):
            curr_vectors = vectors[i].split()

            self.vectors[names[i].strip()] = curr_vectors

        return

    def get_vector(self, minion):
        minion = minion.lower()

        if minion in self.vectors:
            return True

        return False