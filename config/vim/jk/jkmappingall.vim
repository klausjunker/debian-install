"-------------------------------------------------------------
" jkmappingall.vim   Version 6.4.2023
"
" Datei-Linux:		/etc/vim/jkmappingall.vim
"-------------------------------------------------------------
" Mapping
"-------------------------------------------------------------
nnoremap <F2>    :!clear;jkbak %<cr><cr>:w<cr>
":nnoremap <F3>    :!clear;jksik %<cr>:q<cr> 
nnoremap <F6>    yy :let @+=@0 \| let @*=@0<CR>
nnoremap <F7>    :tabe /ex/temp/buffer<cr>
nnoremap <F8>    :tabe<space>
nnoremap <F9>    :tabn<cr>
nnoremap <F10>	  :!clear<cr>:q<cr>
nnoremap <S-F10> :q!<cr>
nnoremap <F12>   :tabe <C-R>=expand("<cfile>")<CR><CR>
"-------------------------------------------------------------
imap <F2> 	 <c-c><F2>
imap <F3> 	 <c-c><F3>
imap <F6> 	 <c-c><F6>
imap <F7> 	 <c-c><F7>
imap <F8> 	 <c-c><F8>
imap <F9> 	 <c-c><F9>
imap <F10> 	 <c-c><F10>
imap <F12> 	 <c-o><F12>
"-------------------------------------------------------------
"vnoremap <F6> 	 "*y
vnoremap <F6> y :let @+=@0 \| let @*=@0<CR>

"-------------------------------------------------------------
" mapleader
"-------------------------------------------------------------
let mapleader = "ß"
nnoremap <leader>h  :echo 'ßh: Hilfe! TEST OK!'<cr>
