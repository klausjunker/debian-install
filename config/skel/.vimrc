"------------------------------------------------------------------------
" vimrc					 
" Datei-Linux:	~/.vimrc						(windows: _vimrc   oder _gvimrc)
" Reload		:source ~/.vimrc        (oder : so %)
"------------------------------------------------------------------------
" Aktualisierung Aug 2024 - 

source ~/.config/vim/schule.vim
if filereadable('/etc/vim/schule_alle.vim')
  source /etc/vim/schule_alle.vim
endif

if filereadable(expand('~/.config/vim/schule.vim'))
  source ~/.config/vim/schule.vim
endif

