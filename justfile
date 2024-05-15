docker-build:
    docker build . -t rpi-mqtt-monitor

docker-run:
    docker run -it --rm \
        --net=host \
        --name rpi-mqtt-monitor \
        --env RMM_MQTT_HOST=localhost \
        rpi-mqtt-monitor
