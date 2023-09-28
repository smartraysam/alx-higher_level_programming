#!/bin/bash
# Bash script that makes reuest that causes the server to respond with message
curl -s -L -X PUT -H "Origin: ALX" -d "id=1"  0.0.0.0:5000/catch_me
