function! GetJKVersion()
  return system('bash ~/scripts/jkbackup.sh --version')
endfunction

function! JKBackup()
  let l:file = expand('%:p')
  if empty(l:file)
    echo "Kein File zum Sichern"
    return
  endif
  let l:ver = GetJKVersion()
  let l:output = system('bash ~/scripts/jkbackup.sh '.shellescape(l:file))
  echo "JKBackup (v" . substitute(l:ver, '\n', '', '') . "):"
  echo l:output
endfunction

function! JKVersion(bump)
  let l:file = expand('%:p')
  if empty(l:file)
    echo "Kein File zum Sichern"
    return
  endif
  let l:ver = GetJKVersion()
  let l:output = system('bash ~/scripts/jkbackup.sh '.shellescape(l:file).' '.a:bump.' lver')
  echo "JKVersion (v" . substitute(l:ver, '\n', '', '') . "):"
  echo l:output
endfunction

function! JKChooseBackupOrVersion()
  let l:choices = [
        \ 'Backup/Versionierung wählen:',
        \ '1. Zeitbasiertes Backup (lokal)',
        \ '2. Versionierung Patch bump (p)',
        \ '3. Versionierung Minor bump (m)',
        \ '4. Versionierung Major bump (M)',
        \ '0. Abbrechen'
        \ ]
  let l:choice = inputlist(l:choices)
  if l:choice == 1
    call JKBackup()
  elseif l:choice == 2
    call JKVersion('p')
  elseif l:choice == 3
    call JKVersion('m')
  elseif l:choice == 4
    call JKVersion('M')
  else
    echo "Abgebrochen."
  endif
endfunction

" Mapping <S-F2> zum Popup-Menü
nnoremap <S-F2> :call JKChooseBackupOrVersion()<CR>
imap <S-F2> <C-O>:call JKChooseBackupOrVersion()<CR>

