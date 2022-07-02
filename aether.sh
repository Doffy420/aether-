sudo apt install openbox
sudo apt install feh rsync python psmisc wireless-tools alsa-utils brightnessctl python3-psutil nitrogen dunst tint2 gsimplecal rofi lxappearance qt5ct qt5-style-plugins lxpolkit xautolock rxvt-unicode xclip scrot jq thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman ffmpegthumbnailer tumbler w3m w3m-img geany viewnior mpv mpd mpc ncmpcpp pavucontrol parcellite neofetch htop imagemagick ffmpeg playerctl xsettingsd
sudo apt install build-essential libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libpcre3-dev libx11-xcb-dev ninja-build meson
git clone https://github.com/yshui/picom.git && cd picom/
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
ninja -C build install
git clone https://github.com/nwg-piotr/psuinfo.git && cd psuinfo/
sudo cp -r {psuinfo,icons} /usr/bin
git clone https://github.com/firecat53/networkmanager-dmenu.git && cd networkmanager-dmenu/
sudo cp networkmanager_dmenu /usr/bin
sudo apt install zsh
chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &&
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/ilham25/dotfiles-openbox
pushd dotfiles-openbox/ && \
  bash -c 'cp -v -r {.*,*} ~/' && \
popd
rm ~/README.md && rm ~/LICENSE && rm -rf ~/.git
cd ~/.icons/

tar -Jxvf oomox-aesthetic-light.tar.xz && tar -Jxvf oomox-aesthetic-dark.tar.xz

sudo cp -r {oomox-aesthetic-light,oomox-aesthetic-dark} /usr/share/icons/

rm -r ~/.icons/{oomox-aesthetic-light,oomox-aesthetic-dark,*.tar.xz} 
fc-cache -rv
sudo gpasswd -a $USER video


