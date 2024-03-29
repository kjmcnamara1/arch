# BUG: Need to copy root as sudo and home dir as kevin

# pacman packages
man-db
man-pages
base-devel
partitionmanager
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
kdeconnect
nodejs
npm
xclip

# yay
git clone https://aur.archlinux.org/yay.git /tmp/yay && cd /tmp/yay && makepkg -si

yay -S megasync-bin dolphin-megasync-bin brave-bin visual-studio-code-bin onedrive-abraunegg logiops logkeys-git displaylink

pipx install poetry
pipx install black

onedrive
onedrive --confdir="~/.config/SharePoint/CI_Sandbox"
systemctl --user enable onedrive
systemctl --user start onedrive
systemctl --user enable onedrive-SharePoint_CI_Sandbox.service
systemctl --user start onedrive-SharePoint_CI_Sandbox.service

systemctl --user enable xcape
systemctl --user start xcape

# EFISTUB
sudo efibootmgr --disk /dev/nvme0n1 --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'initrd=\amd-ucode.img initrd=\initramfs-linux.img root=PARTUUID=f24208d7-67e5-4d8b-a4ef-efc13e1f4dc2 rootflags=subvol=@ rw rootfstype=btrfs quiet splash'

# oh-my-zsh
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions

# powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/themes/powerlevel10k

# pipx packages
poetry
konsave # []: Load konsave settings
jupyterlab
black

# AUR packages
megasync-bin
dolphin-megasync-bin
brave-bin
visual-studio-code-bin
onedrive-abraunegg
logiops
logkeys-git
displaylink # BUG: Serious problems with this
evdi-git
emulationstation
dolphin-emu
youtube

# displaylink fix
echo "KWIN_FORCE_SW_CURSOR=1" | sudo tee -a /etc/environment

# other packages (included with konsave profile?)
Fira Code iScript
FiraCode Nerd Font

dual key remap software for capslock- + esc >ctrl
touchpad drivers
profile picture

# poetry completions
# mkdir "$ZSH_CUSTOM"/plugins/poetry
# poetry completions zsh >"$ZSH_CUSTOM"/plugins/poetry/_poetry

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
echo 'export ONEDRIVE="$HOME/OneDrive"' >>~/.profile
echo 'export ONEDRIVE="$HOME/OneDrive"' >>~/.zprofile

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
