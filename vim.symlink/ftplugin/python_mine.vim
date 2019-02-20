" Real programmers don't use TABs but spaces
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal expandtab

set tw=99   " width of document (used by gd)
set colorcolumn=100

" Efficient Python Folding
setlocal nofoldenable

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" python << EOF
" import os
" import sys
" import vim
" for p in sys.path:
    " # Add each directory in sys.path, if it exists.
    " if os.path.isdir(p):
	" # add egg-links
	" content = os.listdir(p)
	" egg_links = [os.path.join(p, fname) for fname in content if fname.endswith('.egg-link')]
	" for egg in egg_links:
            " with open(egg, 'r') as fh:
		" egg_path = fh.readline().strip()
	    " vim.command(r"set path+=%s" % (egg_path.replace(" ", r"\ ")))
	    " sys.path.append(egg_path)
	" # Command 'set' needs backslash before each space.
	" vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
" EOF

