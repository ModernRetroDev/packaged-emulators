# TIC-80
This executable is built from the code at the following repository:

https://github.com/nesbox/TIC-80

To build this I followed the instructions for `Raspberry Pi` systems, namely:

```bash
sudo apt update && sudo apt -y install cmake libpipewire-0.3-dev libwayland-dev libsdl2-dev ruby-dev libcurl4-openssl-dev
git clone --recursive https://github.com/nesbox/TIC-80 && cd TIC-80/build
cmake -DBUILD_SDLGPU=On -DBUILD_WITH_ALL=On .. && cmake --build . --parallel 2
```

Following successful compilation of the code. I copied over the `make_appimage.sh` file into the `TIC-80/build` directory. I then made a new directory within `TIC-80/build` called `packaging`. Within this new folder, I placed a copy of the `tic80.desktop` file and the `tic80.png` icon file. These were located within the `TIC-80` directory (I just did a search there for them).

After all of this setup, I was then able to build an appimage by running the following command:

```bash
./make_appimage.sh
```