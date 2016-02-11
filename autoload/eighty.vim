function! eighty#exec()
  if col('.') >= 80
    set colorcolumn=80
  else
    set colorcolumn=0
  endif
endfunction
