let g:ctrlp_show_hidden = 1 " Show hidden files and directories

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|vim-mobile/bundle)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

map <C-\> :CtrlPBuffer<CR>
