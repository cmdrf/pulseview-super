# pulseview-super
CMake super-project that builds sigrok/PulseView and all dependencies

Consists of some CMake sorcery to download, build and install all dependencies and PulseView itself.
Created mainly because there were no macOS binary packages available at the time, and MacPorts failed to build libusb when I tried.
Therefore this is **only intended for macOS** right now. For building in other environments, see http://sigrok.org/wiki/Building.

This is not affiliated with the sigrok project. sigrok project homepage: http://sigrok.org.

## Prebuilt packages

See the [releases section on GitHub](https://github.com/cmdrf/pulseview-super/releases) for packages built automatically by Travis CI. The version number (e.g. "0.4.0") refers to the original PulseView release, while the letter (e.g. the "b" in "0.4.0b") corresponds to changes in the pulseview-super project, possibly incorporating newer versions of the dependecies.

## Building yourself (macOS)

The only prequisites for building are Xcode (with command line tools installed) and [CMake](https://cmake.org). On the command line:

    git clone https://github.com/cmdrf/pulseview-super.git
    cd pulseview-super
    mkdir build
    cd build
    cmake ..
    make && make install
    
After finishing, PulseView.app should appear inside the build directory.

pulseview-super can take advantage of some of the dependencies being preinstalled. Right now these are pkg-config and Qt. To pass the Qt installation directory to CMake, replace the `cmake ..` call above by:

    cmake -DCMAKE_PREFIX_PATH=/path/to/qt/ ..

**Warning**: There seems to be an issue with Qt 5.7 installed via HomeBrew (installation path `/usr/local/opt/qt@5.7`). Either `macdeployqt` is confused by the "@" character in the path to Qt, or `macdeployqt` is buggy in Qt 5.7. Building has been successfully tested with Qt 5.9.

## License

BSD-2-Clause. **Important**: This only refers to files inside this repository. The subprojects each have their own license, which you can learn about on their respective homepages.

Everything is provided without warranty. Use at your own risk!
