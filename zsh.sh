
sudo apt install zsh

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone https://github.com/valentinocossar/vscode.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/vscode
## zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo 'ZSH_THEME="ys"' >>~/.zshrc
echo 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting vscode z)' >>~/.zshrc
echo 'source $ZSH/oh-my-zsh.sh' >>~/.zshrc
echo 'setopt no_nomatch' >>~/.zshrc
echo 'alias gcm="git commit -m"' >>~/.zshrc
echo 'alias ga="git add ."' >>~/.zshrc
echo 'alias gs="git status"' >>~/.zshrc
echo 'alias dps="docker ps -a"' >>~/.zshrc
echo 'alias dimg="docker images"' >>~/.zshrc
echo 'alias dexe="docker exec -it --user simulator"' >>~/.zshrc
echo 'alias vpn="export HTTP_PROXY=http://127.0.0.1:7897; export HTTPS_PROXY=http://127.0.0.1:7897; export ALL_PROXY=socks5://127.0.0.1:7897"' >>~/.zshrc
zsh
cd ~    
