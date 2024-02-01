# Grafana Alertmanager Prometheus
with blackbox and node exporter configure.

## Usage

```bash
make init
```
Set env vars to `.env` file. \
After, a list of targets for the [blackbox-exporter](./etc/prometheus/targets/blackbox.yml) and [node-exporter](./etc/prometheus/targets/node.yml).

To install dashboards in Grafana, you need to download the json files and save them to the `./etc/grafana/provisioning/dashboards` (for example: [Node Exporter Full
](https://grafana.com/grafana/dashboards/1860-node-exporter-full/)).
```bash
make start
```

## Note
If there are problems transferring the telegram chat token and id from the environment variables: \
need to hardcode the values in `./etc/alertmanager/alertmanager.yml`

This [issue](https://github.com/grafana/grafana/issues/69950) registered as a Bug in Grafana.
