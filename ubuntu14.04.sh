#!/bin/sh
apt-get install -y zsh \
&& chsh -s /bin/zsh \
&& apt-get install -y git \
&& git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh \
&& ln -s ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc \
&& apt-get install -y autojump \
&& git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh-suggestions \
&& ln -s ~/.zsh-suggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions \
&& sed -i "s/^  git$/  git autojump zsh-autosuggestions/" ~/.oh-my-zsh/templates/zshrc.zsh-template 
