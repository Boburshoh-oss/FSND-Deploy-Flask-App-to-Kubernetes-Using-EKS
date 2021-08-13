
# comment
FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install -r requirements.txt
RUN pip install --upgrade pip


ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]