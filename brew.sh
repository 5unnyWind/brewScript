# For Apple Silicon Mac

# 安装 Command Line Tools (CLT) for Xcode
xcode-select --install

# 中科大源安装 Homebrew
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.ustc.edu.cn/homebrew-core.git
/bin/bash -c "$(curl -fsSL https://cdn.jsdelivr.net/gh/ineo6/homebrew-install/install.sh)"

# 替换 brew.git
git -C "$(brew --repo)" remote set-url origin https://mirrors.ustc.edu.cn/brew.git


# 替换 homebrew-core.git
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-core
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git

# 替换 homebrew-cask.git
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
git remote set-url origin  https://mirrors.ustc.edu.cn/homebrew-cask.git

# 更新配置
brew update-reset

# 更新 bottles 源
echo 'export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles' >> ~/.zshrc
source ~/.zshrc




brew install --cask microsoft-edge
brew install --cask baidunetdisk
brew install --cask iterm2
brew install node
brew install --cask utools
brew install --cask visual-studio-code
brew install docker
brew install docker-compose
brew install termius
brew install --cask qqmusic
brew install --cask feishu
brew install --cask tencent-lemon
brew install --cask wechat
brew install --cask start
