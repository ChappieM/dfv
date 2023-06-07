#!/usr/bin/env python3


import subprocess

command = ["ls", "-l"]
up = ["devcontainer", "up", "--workspace-folder",  "."]

res = subprocess.run(up, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
print(res.stdout.decode())

if __name__=="__main__":
    print("asdf")
