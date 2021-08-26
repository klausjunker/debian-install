:map <leader>t	:echo "Filetyp: c version 13.8.2020 17:50 Uhri(jk)"<cr>
":set backupdir=/extern/temp/vimbackup/c
"------------------------------------------------------------------------
autocmd BufEnter *.c :noremap	 <F5>	:!./%:t:r <CR>
"autocmd BufEnter *.c :noremap	 <F4>	:!g++ -o %:t:r % <CR><CR>
autocmd BufEnter *.c :noremap	    <F4>       :!make <CR><CR>

"------------------------------------------------------------------------
autocmd BufEnter *.c* iabbrev #h #include <stdio.h><CR>int main (void)<CR>{<CR>  printf("Hallo Welt\n");<CR>  return 0;<CR>}<CR><ESC>3ko
autocmd BufEnter *.c* iabbrev #c switch( )<CR>{<CR>  case 1:<CR><CR>  break;<CR><CR>  default:<CR><CR>}<CR><ESC>9k7li
autocmd BufEnter *.c* iabbrev #f /**<CR> @file<CR>@brief<CR>@author Fabian Junker<CR>@date<CR>*/<CR> <ESC>5kA 
autocmd BufEnter *.c* iabbrev #a /**<CR> @fn<CR>@brief<CR>@param<CR>@author Fabian Junker<CR>@date<CR>*/<CR><ESC>6kA
