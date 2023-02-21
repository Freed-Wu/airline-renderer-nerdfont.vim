function! airline#extensions#tabline#formatters#nerdfont#format(bufnr, buffers) abort
  " Call original formatter.
  let originalFormatter = airline#extensions#tabline#formatters#{g:_airline_orig_formatter}#format(a:bufnr, a:buffers)
  return originalFormatter . eval(g:airline_renderer_nerdfont#tabline)
endfunction
