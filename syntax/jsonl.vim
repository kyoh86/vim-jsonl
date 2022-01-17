if !exists("main_syntax")
  " quit when a syntax file was already loaded
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'jsonl'
endif

runtime syntax/json.vim

syntax clear jsonMissingCommaError

syntax match   jsonMissingCommaError /\("\|\]\|\d\)\zs\_s\+\ze"/
syntax match   jsonMissingCommaError /\(\]\|\}\)\_s\+\ze"/ "arrays/objects as values
syntax match   jsonMissingCommaError /\(true\|false\)\_s\+\ze"/ "true/false as value
