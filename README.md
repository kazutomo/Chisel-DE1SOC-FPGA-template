This repository includes Quartus files for DE1-SOC for a simple
top-level module. This can be used as a template.


Getting Started
---------------

     $ git clone https://github.com/kazutomo/de1soc-chisel-temp.git
     $ cd de1soc-chisel-temp
     $ make    # this generate Foobar.v

NOTE:
- tested on Fedora 28 with sbt 1.2.6
- Chisel may not work after source the quartus env; it might cause a Java-related error

How to generate DE1SOC bitstream
--------------------------------

     # setup the quartus environment before make

     $ source your_quartus_env_sh
     $ make sof


How to run the bitstream on DE1SOC
--------------------------------

     # configure and start the USB-blaster (see below)

     $ quartus_pgmw

Configure and start the USB blaster
-------------------------

	$ sudo ln -s /lib64/libudev.so.1 /lib64/libudev.so.0

Add the following lines to the /etc/udev/rules.d/51-usbblaster.rules file:

----------
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6001", MODE="0666" OWNER="1000"
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6002", MODE="0666" OWNER="1000"
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6003", MODE="0666" OWNER="1000"
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6010", MODE="0666" OWNER="1000"
SUBSYSTEM=="usb", ATTR{idVendor}=="09fb", ATTR{idProduct}=="6810", MODE="0666" OWNER="1000"
---------

	$ sudo udevadm control --reload-rules   # reboot may be need

	$ jtagd  --user-start --foreground --debug
