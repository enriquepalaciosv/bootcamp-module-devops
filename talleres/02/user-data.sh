#!/bin/bash -xe

cd /home/e2-user

sudo yum install -y python37
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
sudo yum install git -y
git clone https://github.com/enriquepalaciosv/bootcamp-module-devops.git	
cd bootcamp-module-devops/backend/
pip install -r requirements.txt
nohup gunicorn -w 3 -b 0.0.0.0:8000 app:app &