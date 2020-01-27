A first try to do a IoT home simulator with openBalena infrastructure 
and Raspberry PI emulated boards (with qemu)

On the core (appserver), you need
* influxdb
* grafana
* mosquitto
* mosquitto-clients
* nginx (optional)

On the edge we will need
* moquitto-clients (or equivalent MQTT client as suscriber)

We first start deploying 
* a VPS with openBalena (balena); 
* then a seconfd one with openBalena-CLI on top of LXQt (balena-cli); 
* a third one with the appserver
* to be continued...

balena is a no go because the way "app" are defined. It is not obvious if even possible to run different tagged versions of same App at same time. And to define a new App for each version introduce too complex workflow for our current CI.

Let's try foundries.io...
