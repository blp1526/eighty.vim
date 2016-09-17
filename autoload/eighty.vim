function! eighty#exec() abort
  let &colorcolumn = eighty#calc(virtcol('.'), g:eighty_vim_threshold)
endfunction

function! eighty#calc(virtcol, threshold) abort
  if a:virtcol >= a:threshold
    return a:threshold
  else
    return 0
  endif
endfunction
