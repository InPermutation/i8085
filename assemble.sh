#!/bin/bash
set -ex

FILE="${1:-main.s}"

./vasmz80_oldstyle -8080 -L a.list -chklabels -wfail -x -Fbin -dotdir $FILE
