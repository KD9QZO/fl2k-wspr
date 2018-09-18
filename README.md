# fl2k-wspr
built on initial work in https://github.com/peterbmarks/fl2k and https://osmocom.org/projects/osmo-fl2k/wiki

** I'm seeing a lot of drift in the signal, don't know how to get around this. I will leave this project for now, maybe come back to it when I learn more about fl2k **

###### install libusb
sudo apt-get install libusb-1.0-0-dev

###### increase usb buffer size
On Ubuntu: $ sudo sh -c 'echo 0 > /sys/module/usbcore/parameters/usbfs_memory_mb'

###### install udev rule to allow non root users to access the device
$ sudo cp osmo-fl2k.rules /etc/udev/rules.d/
$ sudo udevadm control -R
$ sudo udevadm trigger

###### compile
$ make
