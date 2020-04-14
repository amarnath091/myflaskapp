FROM ubuntu:18.04

# Installing and updating pip & python
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

# This file consists of your dependencies
COPY ./requirements.txt /app/requirements.txt

# Change your current directory to /app
WORKDIR /app

# Installing dependencies from requirements.txt
RUN pip3 install -r requirements.txt

# Copying all files from current local directory to /app in ubuntu
COPY . /app

# exposing port number 5000
EXPOSE 5000

# mentioning this as ENTRYPOINT once will not require when you are running multiple commands
ENTRYPOINT [ "python3" ]

# runing app now same as "python3 flaskapp.py" with ENTRYPOINT and CMD
CMD [ "flaskapp.py" ]
