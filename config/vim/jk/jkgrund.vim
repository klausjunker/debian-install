set number
"------------------------------------------------------------
filetype plugin indent off
set clipboard=unnamedplus
set laststatus=2

"Klaus Junker 31.5.2024 
set statusline=%h%m%rDatei:\ %<%f\ Zeile:%l\ Spalte:%c%V\ %P\ Tab:%{tabpagenr()}%=[%{&encoding}\ Tabstop:\ %{&tabstop}spaces]\ [%{strftime('KW:\ %V\ %Y-%m-%d\ %H:%M:%S')}]

set listchars=eol:↵,nbsp:⎵,trail:·,tab:⇥·
set wrap   " kein extendes,precedes bei listchars

set tabstop=4
set softtabstop=4	  "wie viele Leerzeichen nach rechts bei tab-Taste
set shiftwidth=4

set autoindent
set smartindent

set expandtab        "Achtung bei Makefiles set noexpandtab


