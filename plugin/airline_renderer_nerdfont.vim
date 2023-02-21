if exists('g:loaded_airline_renderer_nerdfont') || &cpoptions
  finish
endif

let s:save_cpoptions = &cpoptions
set cpoptions&vim

""
" Configure if load @plugin(name).
call g:airline_renderer_nerdfont#utils#plugin.Flag('g:loaded_airline_renderer_nerdfont', 1)

if exists('g:loaded_airline') && g:loaded_airline == 1
  call airline#add_statusline_func('airline_renderer_nerdfont#main')
  ""
  " Store original formatter.
  call g:airline_renderer_nerdfont#utils#plugin.Flag('g:_airline_orig_formatter',
        \ get(g:, 'airline#extensions#tabline#formatter', 'default'))
  ""
  " Usually you don't need modify it.
  call g:airline_renderer_nerdfont#utils#plugin.Flag('g:airline#extensions#tabline#formatter',
        \ 'nerdfont')
endif

let &cpoptions = s:save_cpoptions
unlet s:save_cpoptions
