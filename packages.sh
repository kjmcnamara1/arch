# pacman packages
base-devel
kbd
git
zsh
vim
neovim
python-pip
python-pipx

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
konsave
jupyterlab
black

# AUR packages
brave-bin
visual-studio-code-bin
displaylink # BUG: Series problems with this
emulationstation
dolphin-emu
youtube

# other packages
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
sudo pacman -S git dlang-dmd
git clone https://github.com/skilion/onedrive.git
cd onedrive || exit
make
sudo make install
onedrive
# follow link and paste response URI
# start systemd service
systemctl --user enable onedrive
systemctl --user start onedrive

# logkeys
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
