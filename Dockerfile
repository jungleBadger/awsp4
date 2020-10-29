FROM python:stretch

WORKDIR /main
COPY requirements.txt /main/
COPY . /main

run pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
