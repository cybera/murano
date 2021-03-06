#!/usr/bin/env bash

set -o pipefail

TESTRARGS=$1
python setup.py testr --slowest --testr-args="--subunit $TESTRARGS" | python $(which subunit-trace) -f
