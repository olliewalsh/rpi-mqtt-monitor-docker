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
        --env RMM_GIT_UPDATE=false \
        --env RMM_SERVICE_SLEEP_TIME=5 \
        --env RMM_SYS_CLOCK_SPEED=true \
        --env RMM_WIFI_SIGNAL_DBM=true \
        --env RMM_RESTART_BUTTON=false \
        --env RMM_SHUTDOWN_BUTTON=false \
        --env RMM_USED_SPACE=false \
        rpi-mqtt-monitor
