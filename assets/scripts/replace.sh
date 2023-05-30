#!/bin/bash

before='x_BYTE_E2A28_speak'
after='x_BYTE_E2A28_speech'

grep -r "${before}" ./* | cut -d ':' -f1| sort -u | while read -r line; do
    sed -i "s|${before}|${after}|g" "${line}"
done


