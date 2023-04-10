FROM alpine:3.17

RUN apk add --no-cache py3-pip && apk update 
RUN apk add py3-pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

CMD ["python3", "app.py"]