FROM ubuntu

RUN apt update && apt install -y python3 && apt install -y curl
WORKDIR /app

# COPY requirements.txt requirements.txt
# RUN pip3 install -r requirements.txt

COPY http-server.py .

EXPOSE 8000

CMD [ "python3", "http-server.py"]
