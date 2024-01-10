function! Load_default_theme()
  let g:my_theme=0

  let g:airline_theme='palenight'
  let g:airline_theme#background='dark'
  set listchars=nbsp:␣,tab:▸\ ,extends:»,precedes:«,trail:·,space:·
  set background=dark
  colorscheme palenight
endfunction

function! Load_writer_theme()
  let g:my_theme=1

  let g:airline_theme='pencil'
  let g:airline_theme#background='light'
  set listchars=nbsp:␣,tab:▸\ ,extends:»,precedes:«,trail:·
  set background=light
  colorscheme pencil
  let g:pencil_higher_contrast_ui = 1
  let g:pencil_neutral_code_bg = 1
endfunction

let g:pencil_higher_contrast_ui = 0
let g:pencil_neutral_headings = 0
let g:pencil_neutral_code_bg = 0
let g:pencil_gutter_color = 1
let g:pencil_spell_undercurl = 0

function! Toggle_theme()
  if g:my_theme
    call Load_default_theme()
  else
    call Load_writer_theme()
  endif
endfunction

nnoremap <leader>W :call Toggle_theme()<CR>

let g:palenight_color_overrides = {
\    'black': { 'gui': '#000000', "cterm": "0", "cterm16": "0" },
\}
