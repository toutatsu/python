FROM python:3.11.4

COPY requirements.txt /home/workspace/

WORKDIR /home/workspace/

RUN pip install -r requirements.txt
