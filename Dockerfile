FROM debian:bullseye-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update \
    && apt-get -y install python3 python3-pip curl procps \
    && pip3 install --upgrade pip \
    && pip3 install flask

ENV TZ=America/Los_Angeles
EXPOSE 5000

# WORKDIR /local
# COPY flask_ji.py .
# CMD ["python3", "flask_ji.py"]
COPY flask_ji.py /usr/local/bin/flask_ji.py

CMD flask_ji.py
