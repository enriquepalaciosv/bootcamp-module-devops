#!/bin/bash
cd /home/ec2-user/app/backend
gunicornio -w 3 -b 0.0.0.0:8000 app:app --daemon
sleep 5