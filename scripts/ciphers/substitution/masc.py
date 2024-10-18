from ..cipher import Cipher

def _substitute_chr(c: str, m: dict[int, int]) -> str:
    # disregard numbers and whitespace
    if not c.isalpha():
        return c

    # can transform upper- and lowercase
    if c.isupper():
        reference = 'A'
    else:
        reference = 'a'

    reference = ord(reference)
    return chr(m[ord(c) - reference] + reference)

def _generate_masc_dict(passphrase: str) -> tuple[dict[int, int], dict[int, int]]:
    # eliminate duplicates
    passphrase = ''.join(dict.fromkeys(passphrase))

    enc_dict = dict()
    dec_dict = dict()

    # passphrase portion
    for i, c in enumerate(passphrase):
        c = ord(c) - ord('A')
        enc_dict[i] = c
        dec_dict[c] = i

    # fill with alphabetical continuation
    while i < 25:
        i += 1
        while c in dec_dict:
            c = (c + 1) % 26
        enc_dict[i] = c
        dec_dict[c] = i

    return enc_dict, dec_dict

class MASC(Cipher):
    def __init__(self, passphrase: str):
        self.enc_dict, self.dec_dict = _generate_masc_dict(passphrase.upper())

    def encode(self, plain: str) -> str:
        return ''.join(_substitute_chr(c, self.enc_dict) for c in plain)

    def decode(self, cipher: str) -> str:
        return ''.join(_substitute_chr(c, self.dec_dict) for c in cipher)

    def print_substitution(self) -> None:
        print(' '.join(chr(i + ord('A')) for i in range(26)))
        print(' '.join(chr(i + ord('A')) for i in self.dec_dict.keys()))
