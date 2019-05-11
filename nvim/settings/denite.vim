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

    " Change denite default options
    call denite#custom#option('default', {
        \ 'auto_resize': 1,
        \ 'prompt': 'λ:',
        \ 'highlight_mode_insert': 'Visual',
        \ 'highlight_mode_normal': 'Visual',
        \ 'highlight_matched_char': 'Function',
        \ 'highlight_matched_range': 'Normal',
        \ })
endfunction
