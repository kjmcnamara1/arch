# pacman packages
man-db
man-pages
base-devel
kbd
fuse2 # to be able to run AppImage i.e. Etcher
git
zsh
vim
neovim
python-pip
python-pipx
xcape
kvantum
nodejs
npm

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k

# yay
git clone https://aur.archlinux.org/yay.git /tmp/yay && cd /tmp/yay && makepkg -si

# pipx packages
poetry
konsave # []: Load konsave settings
jupyterlab
black

# AUR packages
brave-bin
visual-studio-code-bin
onedrive-abraunegg
logiops
logkeys-git
displaylink # BUG: Serious problems with this
emulationstation
dolphin-emu
youtube

# other packages (included with konsave profile?)
Fira Code iScript
FiraCode Nerd Font

dual key remap software for capslock- + esc >ctrl
touchpad drivers
megasync
dolphin-megasync
profile picture

# poetry completions
mkdir "$ZSH_CUSTOM"/plugins/poetry
poetry completions zsh >"$ZSH_CUSTOM"/plugins/poetry/_poetry

# MS OneDrive
yay -S onedrive-abraunegg

# sudo pacman -S git dlang-dmd
# git clone https://github.com/skilion/onedrive.git
# cd onedrive || exit
# make
# sudo make install
onedrive
# follow link and paste response URI
# start systemd service
systemctl --user enable onedrive
systemctl --user start onedrive

# MS SharePoint
mkdir -p ~/SharePoint/CI_Sandbox
mkdir -p ~/.config/SharePoint/CI_Sandbox
cp CI_Sandbox_config ~/.config/SharePoint/CI_Sandbox/config
onedrive --confdir="~/.config/SharePoint/CI_Sandbox"
sudo cp onedrive-SharePoint_CI_Sandbox.service /usr/lib/systemd/user/onedrive-SharePoint_CI_Sandbox.service
systemctl --user enable onedrive-SharePoint_CI_Sandbox.service
systemctl --user start onedrive-SharePoint_CI_Sandbox.service

# I Drive
mkdir -p /mnt/I
# []: need to add

# Logitech options for MX Master 3
yay -S logiops

# logkeys
yay -S logkeys-git
git clone https://github.com/kernc/logkeys.git /tmp/logkeys
cd /tmp/logkeys || exit
./autogen.sh
cd build || exit
../configure
make
sudo make install
# []: need to make systemd for `llk`
# doesn't record keys from wireless keyboard
# check https://unix.stackexchange.com/questions/129159/record-every-keystroke-and-store-in-a-file
# log file located at /var/log/logkeys.log

# config
~/.zshrc
~/.config/nvim
