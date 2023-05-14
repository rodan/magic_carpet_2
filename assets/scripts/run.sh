#!/bin/bash

make -j 16 && {
	cat src/remc2 > inst/bin/remc2
	inst/bin/remc2
}

