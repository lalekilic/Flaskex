FROM ubuntu:18.04
RUN apt update  \ 
    &&  apt install python-pip -y
COPY . /
WORKDIR /
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
