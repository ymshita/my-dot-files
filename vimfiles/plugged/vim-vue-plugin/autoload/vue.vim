let s:name = 'vim-vue-plugin'
let s:debug = exists("g:vim_vue_plugin_debug")
      \ && g:vim_vue_plugin_debug == 1

function! vue#Log(msg)
  if s:debug
    echom '['.s:name.']['.v:lnum.'] '.a:msg
  endif
endfunction
