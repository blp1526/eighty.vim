if exists('g:loaded_donttrustovereighty')
  finish
endif
let g:loaded_donttrustovereighty = 1

let s:save_cpo = &cpo
set cpo&vim

augroup donttrustovereighty
  autocmd!
  autocmd CursorMoved,CursorMovedI * call donttrustovereighty#exec()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
