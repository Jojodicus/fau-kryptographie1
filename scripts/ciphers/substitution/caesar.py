from ..cipher import Cipher

def _rotate_chr(c: str, rot: int) -> str:
    # disregard numbers and whitespace
    if not c.isalpha():
        return c

    # can transform upper- and lowercase
    if c.isupper():
        reference = 'A'
    else:
        reference = 'a'

    reference = ord(reference)
    return chr((ord(c) - reference + rot) % 26 + reference)

def _rotate_str(s: str, rot: int) -> str:
    return ''.join(_rotate_chr(c, rot) for c in s)

class Caesar(Cipher):
    def __init__(self, rot: int = 13):
        self.rot = rot

    def encode(self, plain: str) -> str:
        return _rotate_str(plain, -self.rot)

    def decode(self, cipher: str) -> str:
        return _rotate_str(cipher, -self.rot)
