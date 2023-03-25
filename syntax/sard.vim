" comments
syn region SardCom start=/#\|;/ end=/\n/

" operators
syn keyword SardOp += -= *= /= + - * / = := <=> < > != ~= == <= >= <> -> :

" general syntax
syn keyword SardSyn end label goto break continue
syn keyword SardCond if unless else elif elun
syn keyword SardLoop loop dowhile while for
syn match SardFnRetVar /:\k\+\n/
syn match SardFnName /fn\s\+\<\w\+\>/

" preprocessor
syn keyword SardPreproc once
syn keyword SardInclude include use

" base functions
syn keyword SardDefFns syscall pr prn print println exit

" default types
syn match SardNum /\<\d\+\>/
syn match SardHex /\<0x[0-9A-Fa-f]+\>/
syn region SardStr start=/"/ end=/"/

" link to groups

hi def link SardCom Comment
hi def link SardOp Operator
hi def link SardSyn Identifier
hi def link SardCond Conditional
hi def link SardLoop Repeat
hi def link SardInclude Include
hi def link SardPreproc PreProc
hi def link SardFnRetVar Identifier
hi def link SardFnName Identifier
hi def link SardDefFns Function
hi def link SardNum Number
hi def link SardHex Number
hi def link SardStr String
