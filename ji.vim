if !has("gui_running")
	if &t_Co != 256
		echomsg "err: Please use a 256-colors terminal (so that t_Co=256 could be set)."
		echomsg ""
		finish
	end
endif

set background=dark
if v:version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
set cursorline

"hi Normal				cterm=none		ctermfg=230 ctermbg=23  guifg=#ffffff   guibg=#121212
hi Normal				cterm=none		ctermfg=70  ctermbg=235
hi Type                 cterm=none		ctermfg=3  ctermbg=235
hi Constant             cterm=none		ctermfg=166  ctermbg=235
hi Special              cterm=none		ctermfg=9  ctermbg=235
hi Search               cterm=none		ctermfg=15 ctermbg=9
hi Visual               cterm=none		ctermfg=15 ctermbg=202
hi Title                cterm=none		ctermfg=34 ctermbg=235
hi LineNr               cterm=none		ctermfg=245 ctermbg=235
hi Statement            cterm=none		ctermfg=214 ctermbg=235
hi PreProc              cterm=none		ctermfg=9  ctermbg=235
hi TabLineFill          cterm=none		ctermfg=255 ctermbg=0
hi CursorLine           cterm=none		ctermfg=none  ctermbg=238
hi CursorLineNr         cterm=none		ctermfg=9     ctermbg=238
hi Comment              cterm=none		ctermfg=245    ctermbg=235
hi Function             cterm=none		ctermfg=37    ctermbg=235
hi String               cterm=none		ctermfg=34    ctermbg=235
hi Identifier           cterm=none		ctermfg=172    ctermbg=235
hi phpOperator          cterm=none		ctermfg=214    ctermbg=235
hi Directory            cterm=none		ctermfg=172    ctermbg=235
