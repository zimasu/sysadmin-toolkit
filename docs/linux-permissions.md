Simple explanation for Linux Permission and Ownership.

Permission in Linux is governed by chmod.

chmod 755 -> rwxr-xr-x -> All can read and executre, and only user can write.

r = 4
w = 2
x = 1
4 + 2 + 1 = 7

Ownership in Linux is governed by chown.

chown user:group file

Example:

chown zimasu:aksara linux-permission.md
