#!/bin/bash

PROJ='magic_carpet_2'
COVERITY_SCAN_TOKEN=$(cat ../.secrets.COVERITY_SCAN_TOKEN)

make clean
cov-build --dir cov-int make
tar czvf "/tmp/${PROJ}.tgz" cov-int

curl --form token="${COVERITY_SCAN_TOKEN}" \
	  --form email=2b4eda@subdimension.ro \
	  --form file="@/tmp/${PROJ}.tgz" \
	  --form version="$(bash getver.sh -i ../src/version.h -t MAJ.MINbBUILD)" \
	  --form description="Description" \
	  "https://scan.coverity.com/builds?project=rodan%2F${PROJ}"

