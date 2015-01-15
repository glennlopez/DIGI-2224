#!/usr/bin/env python

import subprocess
import os 

# Colors the text
class colors:
    PURPL = '\033[95m'
    BLUE = '\033[94m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RED = '\033[91m'
    WHITE = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

# CMD FUNCTION - for running shell scripts 
def cmd(cmd):
	os.system(cmd)


##########################
# COMMANDS TO EXECUTE
##########################
cmd('clear')
cmd('git log --stat') # comment this out if this doesnt work

