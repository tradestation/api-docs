#! /bin/bash
set -e

## USAGE: cat payload.json | dump.sh

## KNOWN ISSUES:

## SETUP:
## - Install NodeJs
## - NPM Install json-schema-generator
## - Install python 2.7

## Assumes you have GNU grep installed

[ $# -ge 1 -a -f "$1" ] && input="$1" || input="-"

cat $input | grep -Ev '^(END)' | json-schema-generator --stdin | grep -Ev '^(Node)' | python -c 'import sys, yaml, json; yaml.safe_dump(json.load(sys.stdin), sys.stdout, allow_unicode=True, default_flow_style=False, indent=4, width=100)'

