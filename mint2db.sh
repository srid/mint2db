#!/bin/bash

set -e

# Export mint transactions to csv
foreman run ruby /app/mint-exporter.rb > /tmp/transactions.csv

# Import from .csv
sqlite3 /tmp/transactions.sqlite3 <<EOF
.mode csv
.import /tmp/transactions.csv transactions
EOF

# Dump SQL to stdout
echo ".dump transactions" | sqlite3 /tmp/transactions.sqlite3

rm /tmp/transactions.csv
