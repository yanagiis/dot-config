Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ozelentok/denite-gtags'

function DenitePost()
    call denite#custom#map(
          \ 'insert',
          \ '<C-n>',
          \ '<denite:move_to_next_line>',
          \ 'noremap'
          \)

    call denite#custom#map(
          \ 'insert',
          \ '<C-p>',
          \ '<denite:move_to_previous_line>',
          \ 'noremap'
          \)
endfunction
