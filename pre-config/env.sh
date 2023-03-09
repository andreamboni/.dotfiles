# Instalando o necessario

sudo apt install -y python3-pip apt-transport-https curl git gcc make ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip doxygen openjdk-17-jdk openjdk-17-jre fzf

# Instalando Rust e Cargo

curl https://sh.rustup.rs -sSf | sh

# nvm - node version manager para instalar node e npm com as "flags" corretas

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Instalando node e npm com nvm

nvm install node

nvm install-latest-npm

# Installing brave

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y

# SSH Github

ssh-keygen -t ed25519 -C "amboni.andre@gmail.com"

eval "$(ssh-agent -s)" # Resultado "Agent pid 19448"

ssh-add ~/.ssh/id_ed25519 # Adicionando ao ssh agent (precisa colocar a palavra passe)

cat ~/.ssh/id_ed25519.pub # Pegar a chave

ssh -T git@github.com # Aqui precisa checar se contem a finger print do github

# Github fingerprints
# SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8 (RSA)
# SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM (ECDSA)
# SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU (Ed25519)

# Neovim

git clone https://github.com/neovim/neovim

rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"

####################################################

# Info nvim para configurar depois a variavel de ambiente
# NVIM v0.8.0-dev+577-g72877bb17

# Build type: Debug
# LuaJIT 2.1.0-beta3
# Compilation: /usr/bin/cc -DNVIM_TS_HAS_SET_MATCH_LIMIT -DNVIM_TS_HAS_SET_ALLOCATOR -g -Wall -Wextra -pedantic -Wno-unused-parameter -Wstrict-prototypes -std=gnu99 -Wshadow -Wconversion -Wdouble-promotion -Wmissing-noreturn -Wmissing-format-attribute -Wmissing-prototypes -Wimplicit-fallthrough -Wvla -fstack-protector-strong -fno-common -fdiagnostics-color=always -DINCLUDE_GENERATED_DECLARATIONS -D_GNU_SOURCE -DNVIM_MSGPACK_HAS_FLOAT32 -DNVIM_UNIBI_HAS_VAR_FROM -DMIN_LOG_LEVEL=1 -DEXITFREE -I/home/andreamboni/neovim/build/cmake.config -I/home/andreamboni/neovim/src -I/home/andreamboni/neovim/.deps/usr/include -I/usr/include -I/home/andreamboni/neovim/build/src/nvim/auto -I/home/andreamboni/neovim/build/include
# Compiled by andreamboni@andreamboni

# Features: +acl +iconv +tui
# See ":help feature-compile"

   # system vimrc file: "$VIM/sysinit.vim"
  # fall-back for $VIM: "/home/andreamboni/neovim/share/nvim"

# Run :checkhealth for more info

##################################################

# Instalando MarkText

sudo snap install marktext --beta

# Preciso colocar mais algumas coisas aqui referente ao qemu, config do vim e dotfiles. Também não posso esquecer de pegar a configuração do PS1 no .bashrc


# Qemu

sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

sudo adduser your_username kvm

sudo adduser andreamboni kvm

sudo adduser andreamboni libvirt

groups

virsh list --all

sudo apt-get install virt-manager

