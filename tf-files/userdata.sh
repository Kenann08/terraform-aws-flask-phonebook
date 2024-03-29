#! /bin/bash
dnf update -y
dnf install pip -y
pip3 install flask==2.3.3
pip3 install flask_mysql
pip3 install boto3
dnf install git -y
TOKEN=${token_value}
USER=${user-data-git-name}
cd /home/ec2-user && git clone https://$TOKEN@github.com/$USER/terraform-aws-flask-phonebook
.git
export MYSQL_DATABASE_HOST=${db-endpoint}
python3 /home/ec2-user/terraform-aws-flask/phonebook-app.py