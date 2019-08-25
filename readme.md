```bash
mv ~/.vimrc ~/.vimrc.old && \
ln -s ~/dotfiles/.vimrc ~/.vimrc
```
## Install YouCompleteMe With Typescript
```
cd ~/.vim/bundle/youcompleteme && \
python install.py --ts-completer
```

## Pre-requisites
- `brew install macvim`
- `echo "alias vim='mvim -v'" >> ~/.zshrc`
- `brew install fzf`
- `brew install ag`
## General
- `,w` - switch pane

## TSUQUYOMI - Typescript Plugin
- `<C-]>`, `gdd` - go to definition
- `<C-^>` - find references
- `<C-t>` - move the cursor to the last location `<C-]>` was typed
- `:TsuGeterr` - go to error

## fzf ❤️ vim - Fuzzy File Search
https://github.com/junegunn/fzf.vim
- `:FZF` - open fzf
- `,,s` - open fzf
- `CTRL + T` - open file in new tab
- `CTRL + X` - open in vertical pane
- `CTRL + V` - open in horizontal pane

### Ag
https://github.com/ggreer/the_silver_searcher
- `:Ag`

## NERDTree
- `:NERDTreeFind` - display open file in NERDTree

## tcomment_vim
https://github.com/tomtom/tcomment_vim
- `gcc` - toggle line comment

## ALE
https://github.com/dense-analysis/ale
- `:ALEFix` - auto-fix

## Easymotion
https://github.com/easymotion/vim-easymotion
- `<Leader><Leader>w` - trigger word motion down
- `<Leader><Leader>b` - trigger word motion up
