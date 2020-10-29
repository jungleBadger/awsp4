FROM python:3-slim

WORKDIR /main
COPY requirements.txt /main/
COPY . /main
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
