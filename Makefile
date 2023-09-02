# Here's where we'll put our Make commands
greeting:
	echo 'hello world'

math:
	expr 2 + 2

all: directories downloads freshdata

directories:
	-mkdir tmp
	-mkdir data 
#creates directories - dash tells it to ignore error if already exists

downloads:
	curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json
#pulls data and saves it into .json files

freshdata:
	node imf_to_csv.js