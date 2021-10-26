#!/bin/bash

curl -s http://127.0.0.1:4067/summary | python3 -c "import sys, json; data = json.load(sys.stdin); print(\"%.2f MH/s %iW\" % ((data['hashrate'] / 1000000), data['gpus'][0]['power']))" || echo "N/A"