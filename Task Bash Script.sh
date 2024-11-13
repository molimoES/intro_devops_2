#!/usr/bin/env bash

echo "--- OS VERSION"
lsb_release -a
echo ""

echo "--- USERS WITH /BIN/BASH"
awk -F':' '{if ($7~/\/bin\/bash/) {print $1}}' /etc/passwd
echo ""

echo "--- LIST OF OPEN PORTS"
ss -tuln
echo ""