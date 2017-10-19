# SumoLogic Collector
Minimal SumoLogic Collector Docker Image

https://hub.docker.com/r/unlockd/sumocollector/

### What's different to the official sumologic/collector image?

- Uses `tini` to start the java process
- Minimalist. Just enough to Sumo Collector running in a container. We expect you to add/mount `/etc/sumo.conf` and source files in your own way.
- Polling for `/etc/sumo.conf` exist before starting the Collector, so you can control the startup order.

### Basic Usage

```
docker run -it --rm -v "$(pwd)/sumo.conf:/etc/sumo.conf:ro" unlockd/sumocollector
```
