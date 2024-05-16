FROM python:3.12

RUN apt-get update && apt-get install -y wireless-tools \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/olliewalsh/rpi-mqtt-monitor.git /app

WORKDIR /app
RUN pip install -r requirements.txt

WORKDIR /app/src

RUN mv config.py.example config_base.py
ADD ./config.py config.py

CMD ["python", "rpi-cpu2mqtt.py", "--service"]
