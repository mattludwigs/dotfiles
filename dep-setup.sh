cp ./vimrc ~/.vimrc
mv ./vim ~/.vim

sudo apt-get install -y \
         build-essential \
         automake \
         autoconf \
         git \
         squashfs-tools \
         ssh-askpass \
         libssl-dev \
         libncurses5-dev \
         bc \
         m4 \
         unzip \
         cmake \
         python \
         vim-gtk3 \
         inotify-tools

cp ./.git-prompt.sh ~

git config --global alias.co checkout
source ~/.git-prompt.sh

git config --global core.editor "vim"

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.4

echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

asdf plugin-add erlang
asdf plugin-add elixir

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source $HOME/.cargo/env

rustup toolchain add nightly
cargo +nightly install racer


# asdf install erlang 22.0.7
# asdf install elixir 1.9.1-otp-22.0

#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[1;37m\]\e[38;5;214m$(__git_ps1)\[\033[00m\] $ '

#export ERL_AFLAGS="-kernel shell_history enabled"

