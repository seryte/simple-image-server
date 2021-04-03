FROM python:3-alpine
COPY . /data/

WORKDIR /data/
RUN pip3 install -r requirements.txt
RUN mkdir resource
ENTRYPOINT ["python", "-u", "server/main.py", "resource"]

