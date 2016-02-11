function! donttrustovereighty#exec()
  if col('.') > 80
    set cursorcolumn
  else
    set nocursorcolumn
  endif
endfunction
