nnoremap <silent>        <Plug>LionRepeat .
nnoremap <silent> <expr> <Plug>LionRight         lion#cmd("lion#alignRight")
xnoremap <silent> <expr> <Plug>LionRight         lion#cmd("lion#alignRight", 1)
nnoremap <silent> <expr> <Plug>LionLeft          lion#cmd("lion#alignLeft")
xnoremap <silent> <expr> <Plug>LionLeft          lion#cmd("lion#alignLeft", 1)
nnoremap <silent> <expr> <Plug>LionSqueezeRight  lion#cmd("lion#alignSqueezeRight")
xnoremap <silent> <expr> <Plug>LionSqueezeRight  lion#cmd("lion#alignSqueezeRight", 1)
nnoremap <silent> <expr> <Plug>LionSqueezeLeft   lion#cmd("lion#alignSqueezeLeft")
xnoremap <silent> <expr> <Plug>LionSqueezeLeft   lion#cmd("lion#alignSqueezeLeft", 1)

function! s:assign_map(map, func)
	if a:map ==# ''
		return
	endif
	execute 'nmap <silent> ' . a:map . ' <Plug>Lion' . a:func
	execute 'xmap <silent> ' . a:map . ' <Plug>Lion' . a:func
endfunction

if get(g:, 'lion_create_maps', 1)
	call s:assign_map(get(g:, 'lion_map_right',     'g['), 'Right')
	call s:assign_map(get(g:, 'lion_map_left',      'g]'), 'Left')
	call s:assign_map(get(g:, 'lion_map_right_sqz', 'g{'), 'SqueezeRight')
	call s:assign_map(get(g:, 'lion_map_left_sqz',  'g}'), 'SqueezeLeft')
endif
