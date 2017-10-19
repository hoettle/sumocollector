# SumoLogic Collector
Minimal SumoLogic Collector Docker Image

### What's different to the official sumologic/collector image?

- Uses `tini` to start the java process
- Minimalist. Just enough to Sumo Collector running in a container. We expect you to add/mount `/etc/sumo.conf` and source files in your own way.
- Optionally polling a file exists before starting the Collector. Useful in many scenarios.
