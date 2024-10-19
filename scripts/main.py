#! /usr/bin/env python3

if __name__ == '__main__':
    import ciphers.substitution.caesar
    c = ciphers.substitution.caesar.Caesar(4)
    print(c.decode("SECRETMESSAGE"))
    print('TODO')
