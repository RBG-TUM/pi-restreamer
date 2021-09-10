# Usbreset

Some usb capture cards don't deliver any image after reading from them initially. A little hack is to reset them.

## Build

1. Install gcc
2. `make`

## Usage

1. Find the usb device you need to reset: 
```bash
$ lsusb
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 002: ID 2935:0006 Magewell USB Capture HDMI # this is the one we are looking for
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 002: ID 2109:3431 VIA Labs, Inc. Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```
2. reset it:
```bash
./usbreset /dev/bus/usb/002/002
```