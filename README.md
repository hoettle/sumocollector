# SumoLogic Collector
Minimal SumoLogic Collector Docker Image

https://hub.docker.com/r/unlockd/sumocollector/

### What's different to the official sumologic/collector image?

- Uses `tini` to start the java process
- Minimalist. Just enough to Sumo Collector running in a container. We expect you to add/mount `/etc/sumo.conf` and source files in your own way.
- Optionally polling a file exists before starting the Collector. Useful in many scenarios.
