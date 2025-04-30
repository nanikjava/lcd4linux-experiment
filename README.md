This repository contains information on how to build lcd4linux and run the character display in software before dabbling around with the actual character display.

# Steps

Follow the steps below to build and run lcd4linux locally using software character display:

1. Clone the repository `git clone https://github.com/ukoda/lcd4linux-ax206`

2. Run the following in sequence
    * `libtoolize --copy --force`
    * `aclocal`
    * `autoheader`
    * `autoconf`
    * `automake --add-missing --copy --foreign`
    * `./configure --with-drivers=DPF,X11`
    * `make -j20`

3. Download the `lcd4linux.conf` configuration and `loadloop.sh` from this repository and store it in your local drive.

4. Run the compiled `lcd4linux` binary using `./lcd4linux  -vv -F -f ./lcd4linux.conf -display :1`. The display refers to your X11 display number

5. After successfully running lcd4linux open another terminal and run `loadloop.sh`. The `loadloop.sh` script is to push memory and CPU data into a separate directory that will be read by lcd4linux using the `FIFO` and `ReadFile` plugins.


