#!/bin/bash
# Bash script that makes reuest that causes the server to respond with message
curl -s -L -X POST -H "User-Agent: You got me!" -d "param=value" 0.0.0.0:5000/catch_me
