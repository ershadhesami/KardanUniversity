# Third Program
# Ahmad Ershad 202-1904059

import os
import time

# Creating new file and adding inital text
a = open('text.txt', 'w')
a.write('This is the initial text inside the file')
a.close();

# Printing initial text
b = open('text.txt', 'r')
print(b.read())
b.close()

# Updating the file
c = open('text.txt', 'a')
c.write(', another text')
c.close()

# Printing updated text
d = open('text.txt', 'r')
print(d.read())
d.close()

# Only for checking if the file is created or not
time.sleep(3)

# Deleting the file
if os.remove('text.txt') == None:
	print('File deleted successfully')
