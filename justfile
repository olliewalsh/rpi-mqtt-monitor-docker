docker-build:
    docker build . -t rpi-mqtt-monitor

docker-run:
    docker run -it --rm \
        --privileged \
        --net=host \
        --name rpi-mqtt-monitor \
        --env RMM_MQTT_HOST=localhost \
        --env RMM_MQTT_TOPIC_PREFIX=monitor \
        --env RMM_UPDATE=false \
        --env RMM_SERVICE_SLEEP_TIME=5 \
        rpi-mqtt-monitor
