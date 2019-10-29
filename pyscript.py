import string;
import random;

letters = list(string.ascii_lowercase)
f = 'C:/testfile.txt'
with open(f, mode='w') as f:
    for x in range(100):
        f.write(random.choice(letters))
    f.write('\n')

