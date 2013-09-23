" Basic
augroup gVimrc
    autocmd!
augroup END

" GUI
set t_vb=
set guicursor+=a:blinkon0    " disable cursor blinking
set guioptions-=T            " remove toolbar

" Restore gVim window size
function! s:SizeFile()
  if has('amiga')
    return "s:.vimsize"
  elseif has('win32')
    return $HOME.'\_vimsize'
  else
    return $HOME.'/.vimsize'
  endif
endfunction

function! s:SizeRead()
  let l:sizefile = s:SizeFile()
  if has('gui_running') && filereadable(l:sizefile)
    let l:sizes = split(readfile(l:sizefile, '', 1)[0])
    execute "set columns=" . l:sizes[0] . " lines=" . l:sizes[1]
  endif
endfunction

function! s:SizeWrite()
  let l:sizefile = s:SizeFile()
  if has('gui_running')
    let l:sizes = &columns . ' ' . &lines
    call writefile([l:sizes], l:sizefile)
  endif
endfunction

autocmd gVimrc VimEnter * execute s:SizeRead()
autocmd gVimrc VimLeavePre * execute s:SizeWrite()
