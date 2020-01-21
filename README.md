A first try to do a IoT home simulator with openBalena infrastructure 
and Raspberry PI emulated boards (with qemu)

On the core, you need
* influxdb
* grafana
* mosquitto
* mosquitto-clients
* nginx (optional)

On the edge we will need
* moquitto-clients (or equivalent MQTT client as suscriber)
