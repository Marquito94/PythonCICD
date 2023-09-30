FROM python:latest

COPY . /myapp

WORKDIR /myapp

RUN apt update
RUN apt upgrade -y
RUN apt install -y nano
RUN pip install -r requirements.txt

EXPOSE 8080

CMD ["python","myapp.py"]
