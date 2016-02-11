if exists('g:loaded_eighty')
  finish
endif
let g:loaded_eighty = 1

let s:save_cpo = &cpo
set cpo&vim

augroup eighty
  autocmd!
  autocmd CursorMoved,CursorMovedI * call eighty#exec()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
