import re

line = "Hello World";
matchObj = re.match( r'(.*)', line,re.U|re.I)
print  matchObj.group()

