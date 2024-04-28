# k3s-haproxy-lb

- maintained by

[Ataris Mio](https://github.com/AtarisMio)

# Why use haproxy

k3s's klipper-lb(servicelb) cannot pass clientip to pods, traefik support `proxy protocol`, so I custom klipper-lb image using haproxy for tcp traffic.

# Usage

You can already modify this as part of custom cloud provider config. Start K3s with `--kube-cloud-controller-manager-arg=cloud-config=/etc/rancher/k3s/cloud-config.json`, and place the following in `/etc/rancher/k3s/cloud-config.json`

```json
{
  "lbEnabled": true,
  "lbImage": "docker.io/ataris/klipper-haproxy-lb:2.9.7-alpine",
  "lbNamespace": "kube-system",
  "nodeEnabled": true,
  "rootless": false
}
```

# Reference

- [configure klipper lb image](https://github.com/k3s-io/k3s/issues/7625#issuecomment-1568773463)
