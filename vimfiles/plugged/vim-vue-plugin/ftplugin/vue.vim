if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal matchpairs+=<:>

if exists("loaded_matchit")
  let b:match_ignorecase = 1
  let b:match_words = '<:>,' .
        \ '<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,' .
        \ '<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,' .
        \ '<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'
endif

" Indent correctly with template string for vim-javascript/builtin
" indentexpr
let b:syng_str = '^\%(.*template\)\@!.*string\|special'
let b:syng_strcom = '^\%(.*template\)\@!.*string\|comment\|regex\|special\|doc'
