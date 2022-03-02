# amdgpu-overclock
Linux amdgpu overclock settings. Currently only provides settings for a Radeon RX 590.

## Installation
```
sudo sh install.sh <config>
```

## Usage
Enable (on boot)/start overclock:
```
sudo systemctl enable amdgpu-oc-enable
sudo systemctl start amdgpu-oc-enable
```

Restore stock settings:
```
sudo systemctl start amdgpu-oc-disable
```

Enable (on boot)/start ethereum mining tuning:
```
sudo systemctl enable amdgpu-oc-ethmine
sudo systemctl start amdgpu-oc-ethmine
```
