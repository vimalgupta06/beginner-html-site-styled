#!/usr/bin/env bash
set -euo pipefail

page="index.html"
expected_heading='<h1>Mozilla is cool</h1>'

if [[ ! -f "$page" ]]; then
  echo "FAIL: $page is missing."
  exit 1
fi

if ! grep -Fq -- "$expected_heading" "$page"; then
  echo "FAIL: Expected to find $expected_heading in $page."
  exit 1
fi

echo "PASS: $page contains the expected homepage heading."