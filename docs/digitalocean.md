DigitalOcean odind-docker
=============================

* [Create](https://cloud.digitalocean.com/droplets/new) -> Droplets
* Container distributions, CoreOS (stable)
* Select region and ensure an [SSH key](https://cloud.digitalocean.com/account/security) is setup and added to the created instance.

```
ssh core@your.coreos.droplet.ip
```

If using the smallest DigitalOcean Droplet (currently 1G) use the following before building:
```
sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
sudo mkswap /var/swap.img
sudo chmod 600 /var/swap.img
sudo swapon /var/swap.img
```

Follow usual install instructions in the [main repo README](https://github.com/chrishasl/odind-docker/blob/master/README.md)
