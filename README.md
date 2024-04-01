# Ubuntu cifs with rdma

Compile cifs kernel module with `CONFIG_CIFS_SMB_DIRECT=y`


## Build an Ubuntu package

```
dpkg-deb --root-owner-group --build deb cifs-rdma-1.0.deb
```

## Build manually via dkms
(from `deb/usr/src/cifs-rdma-1.0` folder)

### Add the dkms module from source

```
sudo dkms add .
```

### Manually uninstall the dkms module and remove all traces
```
sudo dkms remove -m cifs-rdma -v 1.0 --all ; sudo rm -r /usr/src/cifs-rdma-1.0
```

### Manually install the added dkms module
```
sudo dkms install cifs-rdma -v 1.0
```

