FROM ubuntu
RUN apt-get update && apt-get install python3 python3-pip -y
RUN mkdir /app
COPY app/ /app/
WORKDIR /app
RUN pip3 install -r requirements.txt
CMD python3 app.py
