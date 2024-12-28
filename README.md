# hyphanet_bsd
BSD Software for Hyphanet from Sl0wD0wn on Hyphanet


README for Install Script

I compiled a small shell-script to install hyphanet with prerequisites and deploy the wrapper. It is quite experimental.
To make it run properly you must have sudo installed and added the user to sudoers.

e.g.:
If your user is freenet create a file /usr/local/etc/sudoers.d/freenet with the contents:

    freebsd ALL=(ALL) NOPASSWD: ALL

Note: it works best as far as I have tried with openjdk17-17.0.12+7.1
That is the reason the script installs openjdk17. If you have installed another jdk you should probably remove it.
Wrapper version is the same as for linux, otherwise you run into troubles with wrapper.jar.

e.g.:
You want to install hyphanet in CURRENT_DIRECTORY/hyphanet
you copy the script to CURRENT_DIRECTORY/hyphanet and after making it executeable (chmod a+x hnbsd.sh) you call

    ./hnbsd.sh hyphanet

  README for FLIP Binary

  It is provided as is in case you cannot compile things.
