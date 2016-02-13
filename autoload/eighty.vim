function! eighty#exec()
  if col('.') >= g:eighty_vim_threshold
    let &colorcolumn = g:eighty_vim_threshold
  else
    let &colorcolumn = 0
  endif
endfunction
