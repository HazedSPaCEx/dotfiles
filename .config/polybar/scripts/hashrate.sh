#!/bin/bash

curl -s http://127.0.0.1:4067/summary | python -c "import sys,json; exec(\"try:data=json.load(sys.stdin);print('%.2f MH/s %iW'%(data['hashrate']/1000000,data['gpus'][0]['power']));\nexcept:print('N/A')\")"