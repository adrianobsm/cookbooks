# Config

## Set **wedisagree** theme for Zsh


```sh
sed -i -e 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"wedisagree\"/g' ~/.zshrc
```

## Set Monokai syntax for Vim

```sh
mkdir ~/.vim
wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim -P ~/.vim/colors
echo -e "syntax enable\ncolorscheme monokai" >> ~/.vimrc
```

```sh
cat ~/.vimrc
```
