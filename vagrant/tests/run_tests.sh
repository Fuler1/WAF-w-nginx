#!/bin/bash
BASE="http://localhost"

echo "[1] Normal request:"
curl -i $BASE

echo "[2] XSS test:"
curl -i -X POST -d "q=<script>alert(1)</script>" $BASE/search

echo "[3] SQLi test:"
curl -i -X POST -d "q=UNION SELECT password FROM users" $BASE/search
