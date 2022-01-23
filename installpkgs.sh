#!/bin/sh

PKG="\
    ack \
    acpi \
    arandr \
    atool \
    autoconf \
    autoconf-archive \
    autoconf-doc \
    automake \
    build-essential \
    clang \
    cmake \
    cmake-data \
    compton \
    curl \
    feh \
    g++ \
    gimp \
    git \
    gnu-standards \
    gnutls-bin \
    gperf \
    gtk-doc-tools \
    i3-gaps \
    i3-gaps-session \
    i3-gaps-wm \
    icu-doc \
    imagemagick \
    intltool \
    jq \
    libasound2-dev \
    libcairo2-dev \
    libcurl4-openssl-dev \
    libdatrie-doc\
    libev-dev \
    libgirepository1.0-dev \
    libglib3.0-cil-dev \
    libgnutls28-dev \
    libgraphite2-utils \
    libgtk-3-dev \
    libgtk2.0-dev \
    libiw-dev \
    libjsoncpp-dev \
    libmpdclient-dev \
    libpango1.0-dev \
    libpango1.0-doc\
    libpcre2-dev \
    libpulse-dev \
    libstartup-notification0-dev \
    libthai-doc \
    libtool \
    libtool-doc \
    libvte-2.91-0 \
    libvte-2.91-common \
    libvte-2.91-dev \
    libvte-2.91-doc \
    libvte-common \
    libvte-dev \
    libxcb1-dev \
    libxcb-composite0-dev \
    libxcb-cursor-dev \
    libxcb-ewmh-dev \
    libxcb-icccm4-dev \
    libxcb-image0-dev \
    libxcb-keysyms1-dev \
    libxcb-randr0-dev \
    libxcb-util0-dev \
    libxcb-xinerama0-dev \
    libxcb-xkb-dev \
    libxcb-xrm-dev \
    libxkbcommon-dev libxkbcommon-x11-dev \
    libxml2-utils \
    libyajl-dev \
    lua \
    lsb \
    lsb-release \
    mpd \
    neovim \
    pandoc \
    pkg-config \
    python3-xcbgen \
    ranger \
    redshift \
    rofi \
    scrot \
    stow \
    terminator \
    texlive \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texstudio \
    tree \
    valac \
    vlc \
    x11-utils \
    xcb-proto \
    xmodmap \
    xdotool \
    xrandr \
    xsel \
    xutils-dev \
    "

# exa \
# xorg-xinit \
# i3-wm \

if [ -x /usr/bin/yay ]; then
	echo "install $PKG"
	/usr/bin/yay -Syu --needed $PKG
fi
if [ -x /usr/bin/apt-get ]; then
	sudo /usr/bin/apt-get install $PKG
fi
exit 0

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

exit 0


sudo mkdir -p /var/git/

# Clone build and install polybar
cd /var/git
if [ ! -d polybar ]; then
    git clone --recursive https://github.com/polybar/polybar
fi
cd polybar && git pull origin master
./build.sh
# if [ ! -d build ]; then
#     mkdir build 
# fi
# cd build && \
#     cmake .. && \
#     make -j$(nproc)
# # Optional. This will install the polybar executable in /usr/local/bin
# sudo make install


# Clone build and install siji
cd /var/git
if [ ! -d siji ]; then
    git clone https://github.com/stark/siji
fi
cd siji && git pull origin && ./install.sh



# Clone build and install termite
# see: https://computingforgeeks.com/install-termite-terminal-on-ubuntu-18-04-ubuntu-16-04-lts/
# cd /var/git
# if [ ! -d termite ]; then
#     git clone --recursive https://github.com/thestinger/termite.git
# fi
# cd termite && make
# sudo make install
# sudo ldconfig
# sudo mkdir -p /lib/terminfo/x
# sudo ln -s /usr/local/share/terminfo/x/xterm-termite /lib/terminfo/x/xterm-termite
# sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/termite 60



