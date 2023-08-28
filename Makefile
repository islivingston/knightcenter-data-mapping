# Here's where we'll put our Make commands
greeting:
	echo 'hello world'

math:
	expr 2 + 2

all: greeting math

directories:
	-mkdir tmp
	-mkdir data 
#creates directories - dash tells it to ignore error if already exists