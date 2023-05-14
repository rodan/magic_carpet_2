#!/bin/bash

make -j 16 && {
	cat remc2/remc2 > inst/bin/remc2
	inst/bin/remc2
}

