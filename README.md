# pulseview-super
CMake super-project that builds sigrok/PulseView and all dependencies

Consists of some CMake sorcery to download, build and install all dependencies and PulseView itself.
Created mainly because there are no macOS binary packages available, and MacPorts failed to build libusb when I tried.
Therefore this is only intended for macOS. For building in other environments, see http://sigrok.org/wiki/Building.

This is not affiliated with the sigrok project. sigrok project homepage: http://sigrok.org.
