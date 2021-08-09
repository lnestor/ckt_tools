import copy

class KeyHistory():
    def __init__(self, keynames):
        self.keynames = keynames
        self.saves = []

    def save(self, key):
        state = copy.deepcopy(key)
        self.saves.append(state)

    def print(self, focus=None):
        ordered_names = sorted(self.keynames, key=lambda name: int(name[8:]))

        if focus is not None:
            ordered_names = [focus]

        for name in ordered_names:
            string = ""

            for save in self.saves:
                if not name in save:
                    string += "X"
                elif save[name]:
                    string += "1"
                else:
                    string += "0"

            print("%s %s" % ((name + ":").ljust(13), string))
