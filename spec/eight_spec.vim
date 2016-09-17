source $PWD/plugin/eighty.vim

let v:errors = []

function! Spec_eighty_calc() abort
  echo 'eighty#calc'
  echo repeat(' ', 2).'when threshold is 80'
  let threshold = 80

  echo repeat(' ', 4).'if virtcol is less than threshold'
  let virtcol  = 79
  let expected = 0
  let actual   = eighty#calc(virtcol, threshold)
  echo repeat(' ', 6).'should return 0'
  call assert_equal(expected, actual)

  echo "\n"

  echo repeat(' ', 4).'if virtcol is greater than or equal to threshold'
  let virtcol  = 80
  let expected = threshold
  let actual   = eighty#calc(virtcol, threshold)
  echo repeat(' ', 6).'should return threshold'
  call assert_equal(expected, actual)
endfunction

call Spec_eighty_calc()

echo "\n" . len(v:errors) . ' failed'
