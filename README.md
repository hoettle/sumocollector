# SumoLogic Collector
Minimal SumoLogic Collector Docker Image

https://hub.docker.com/r/unlockd/sumocollector/

### What's different to the official sumologic/collector image?

- Uses `tini` to start the java process
- Minimalist. Just enough to Sumo Collector running in a container. We expect you to add/mount `/etc/sumo.conf` and source files in your own way.
- Optionally, if you set `INCOMING_SUMO_CONF` to a path, it will poll that path exists and then copy the file to `/etc/sumo.conf` before starting the Collector.

### Basic Usage

```
docker run -it --rm -v "$(pwd)/sumo.conf:/etc/sumo.conf:ro" unlockd/sumocollector
```
