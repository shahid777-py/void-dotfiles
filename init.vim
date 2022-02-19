	let mapleader =","
" map <Esc>[B <Down>
" set term=xterm-256color
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
echo "Downloading junegunn/vim-plug to manage plugins..."
silent !mkdir -p ~/.config/nvim/autoload/
silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.config/nvim/plugged')
"Monochromatic Colors
" Snippet
" Plug 'honza/vim-snippets'
" Plug 'lervag/vimtex'
Plug 'vim-scripts/fnaqevan'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tanvirtin/monokai.nvim'
Plug 'phanviet/vim-monokai-pro'
Plug 'bfrg/vim-cpp-modern'
Plug 'tomasr/molokai'
Plug 'karb94/neoscroll.nvim'
Plug 'ehamberg/vim-cute-python'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'jacoborus/tender.vim'
Plug 'shinchu/lightline-gruvbox.vim'
"MD-Live-Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"Nvim-Lua Completions for Fast
"Plug 'nvim-lua/completion-nvim'
"
"Smart Auto-Pair Tree
Plug 'tmsvg/pear-tree'
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
Plug 'norcalli/nvim-colorizer.lua'
"Indent Line for Python and indent Langs
"Plug 'Yggdroot/indentLine'
Plug 'vim-python/python-syntax'                    " Python highlighting
Plug 'tpope/vim-repeat'
Plug 'machakann/vim-sandwich'
"Plug 'gf3/peg.vim'
Plug 'jkramer/vim-checkbox'
Plug 'vim-pandoc/vim-rmarkdown'
Plug 'plasticboy/vim-markdown'
Plug 'gioele/vim-autoswap'
Plug 'elixir-editors/vim-elixir'
"Golang
" Plug 'AndrewRadev/splitjoin.vim'
"======================================================================
" Plug 'nvim-treesitter/nvim-treesitter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'RyanMillerC/better-vim-tmux-resizer'
Plug 'neovimhaskell/haskell-vim'
Plug 'tpope/vim-surround'
"Plug 'dpelle/vim-LanguageTool'
"Plug 'jeetsukumaran/vim-pythonsense'
Plug 'kovetskiy/sxhkd-vim'
"Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'alvan/vim-closetag'
Plug 'dkarter/bullets.vim'
" Plug 'mattn/emmet-vim'
" Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
" Plug 'mbbill/undotree'
call plug#end()

	filetype plugin indent on

	if !has('gui_running')
	  set t_Co=256
	endif

" Pmenu Settings
	highlight Pmenu ctermbg=241 ctermfg=white cterm=bold

" highlight Color
	hi Search cterm=NONE ctermfg=0 ctermbg=222

    let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']

" Bullets Defining
	let g:bullets_enabled_file_types = [
	    \ 'markdown',
	    \ 'text',
	    \ 'gitcommit',
	    \ 'scratch',
	    \ 'rmd',
	    \ 'rmarkdown'
	    \]

	set bg=light
	 " let g:lightline = {
	 "       \ 'colorscheme': 'deus',
	 "       \}




	" set showtabline=2  " Show tabline
	set guioptions-=e  " Don't use GUI tabline


	set pumheight=15                        " makes popup menu smaller
	" let g:deus_termcolors=256
	" colorscheme deus
	" colorscheme seoul256

" MarkdownPreview
	nmap <C-s> <Plug>MarkdownPreview
	" nmap <M-s> <Plug>MarkdownPreviewStop
	" nmap <C-p> <Plug>MarkdownPreviewToggle


" map New line
" nnoremap <C-enter> o <esc>
" nnoremap <C-S-enter> O <esc>


" Fix indenting visual block
	vmap < <gv
	vmap > >gv


" -----Code Generation-----
" Guide navigation
	noremap <leader><Tab> <Esc>/<++><Enter>"_c4l
	inoremap <leader><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><Tab> <Esc>/<++><Enter>"_c4l

" general insert commands
	inoremap ,; <++>

" Save file as sudo when no sudo permissions
	" cmap w!! w !sudo tee > /dev/null %

" " For remapping the tab key to do autocompletion
" 	inoremap <silent><expr> <TAB>
" 	      \ pumvisible() ? "\<C-n>" :
" 	      \ <SID>check_back_space() ? "\<TAB>" :
" 	      \ coc#refresh()
" 		inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"



" center the search on the line it's found in.
	nnoremap n nzzzv
	nnoremap N Nzzzv

" Vertically center document when entering insert mode
	" autocmd InsertEnter * norm zz

" highlight LineNr ctermfg=grey ctermbg=None cterm=red

	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	hi NonText guifg=bg

" Case Insensitive Search "
	set ic

" Highlight Searches"
	" set nohlsearch
	set hlsearch
	nnoremap <c-c> :set hlsearch! hlsearch?<CR>
	" nnoremap <c-c> :ColorizerAttachToBuffer<CR>


" Clear Buffer

" Some basics:
	nnoremap c "_c
	set noruler
	" set modeline
	set nocompatible
	set wrap
	set mouse=a
	set clipboard+=unnamedplus
	set go=a
	filetype plugin on

	syntax on
	" set expandtab
	set encoding=utf-8
	set number relativenumber
	" set cursorline
	" hi cursorline gui=bold

" Enable autocompletion
	set wildmode=longest,list,full
	let g:rehash256 = 1
	set t_Co=256
" Hide Statusline INSERT
	" set noshowmode
" disables statusline
	set laststatus=0
	 " source ~/.config/nvim/statusline.vim    " patch to statusline config
" Enable's statusline
	" set laststatus=2
" to get rid of display of last command
	set noshowcmd
" to get rid of the file name displayed in the command line bar
	" set shortmess+=F
" Shows Tabline on top
	" set showtabline=1
" Making esc to quit autocomplete
	" inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

" Disabling Enter key  newline in autocompletion
	inoremap <expr> <cr> ((pumvisible())?("\<C-y>"):("\<cr>"))

" Xreseources Commentry
	" autocmd FileType  xdefaults setlocal commentstring=!\ %s

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	red

"Set status line
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" Goyo plugin makes text more readable when writing prose:
	map <silent><leader>g :Goyo \| hi Normal guibg=NONE ctermbg=NONE <CR>
" Change to light and solorozied
" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
	setlocal nospell

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright


	" map <silent><leader>n :CocCommand explorer<cr>
	" map <silent><leader>f :CocCommand explorer --preset floating<cr>

" vimling:
	nm <leader>d :call ToggleDeadKeys()<CR>
	imap <leader>d <esc>:call ToggleDeadKeys()<CR>a
	nm <leader>i :call ToggleIPA()<CR>
	imap <leader>i <esc>:call ToggleIPA()<CR>a
	nm <leader>q :call ToggleProse()<CR>

	" nmap <Leader>l <Plug>(Limelight)
	" xmap <Leader>l <Plug>(Limelight)
	autocmd! User GoyoEnter Limelight
	autocmd! User GoyoLeave Limelight!
	nmap <leader>L :Limelight!!<CR>

" Shortcutting split navigation, saving a keypress:
	" nmap <C-h> <C-w>h
	" nnoremap <C-j> <C-w>j
	" map <C-k> <C-w>k
	" map <C-l> <C-w>l
	nnoremap <C-q> <C-w>q
	" nnoremap <silent><C-q> :wq!<CR>


" Enable folding for Python
	set foldenable
	" set foldmethod=manual
	set foldmethod=manual
	" set foldmethod=syntax
	" set foldmethod=indent
	" set foldmethod=expr
	set foldlevel=0
	" set fdm=syntax
" augroup vimrc
"   au BufReadPre * setlocal foldmethod=indent
"   au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END

" Insert mode in Normal mode
	" nnoremap <c-k> O<esc>
	" nnoremap <c-j> o<esc>

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Open my bibliography file in split
	" map <leader>b :vsp<space>$BIB<CR>
	" map <leader>r :vsp<space>$REFER<CR>
" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>
	vnoremap S :s//g<Left><Left>
" Compile document, be it groff/LaTeX/markdown/etc.
hi Green guifg=#00ff00 ctermfg=green
	map <leader>c :w! \| !compiler <c-r>%<CR>
	" map <leader>c :w! \| !compiler \|chohl MyColor | echo "Compilation" | echohl None <c-r>%<CR>
	" map <silent> <c-m> :w! \| !compiler <c-r>%<CR>
	" map <leader>b :w! \| !open.sh  <c-r>%<CR>

	" Refresh webpage
	map <leader>r :! sync_browser <cr>

" Open corresponding .pdf/.html or preview
	nnoremap <leader>p :!opout <c-r>%<CR><CR>
" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

" Ensure files are read as what I want:
	" let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	" map <leader>v :VimwikiIndex


	autocmd BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
	" autocmd BufRead,BufNewFile *.tex set filetype=tex

" Save file as sudo on files that require root permission
	" cnoremap w!! execute "silent! write !sudo -S tee % >/dev/null" <bar> edit!
	" Dwm Statusbar

" Enable Goyo by default for mutt writting
	autocmd BufRead,BufNewFile /tmp/neomutt* let g:goyo_width=80
	autocmd BufRead,BufNewFile /tmp/neomutt* :Goyo
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZZ :Goyo\|x!<CR>
	autocmd BufRead,BufNewFile /tmp/neomutt* map ZQ :Goyo\|q!<CR>

" When shortcut files are updated, renew bash and ranger configs with new material:
	" autocmd BufWritePost files,directories !shortcuts
" Run xrdb whenever Xdefaults or Xresources are updated.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" setlocal spell! spelllang=en_us
" Toggle Autocommpiler
	map <leader>a :!setsid autocomp % &<CR>

	map Y y$





	nnoremap <silent><S-k> gt
	nnoremap <silent><S-j> gT

	nnoremap <silent><C-s> <C-w>r


" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
	if &diff
	    highlight! link DiffText MatchParen
	endif

	"Bad spell color
	hi SpellBad    ctermfg=white     ctermbg=009     cterm=none

" Latex autocompile When Saving....
	" autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1"
" Python Syntax
	let g:python_highlight_all = 1
	let g:python_highlight_indent_errors = 0
	let g:indentLine_color_gui = '#A4E57E'



" Select all
	map <c-a> ggvG$
	imap <c-a> <ecs>ggvG$

" Insert in a () anywhere on the line (My own Creation)
	map <leader>; /(<CR>ci)

"Markdwon Preview Settings
	let g:mkdp_refresh_slow = 1
	" To use preview of md for all
	" let g:mkdp_command_for_global = 1
	let g:mkdp_browser = 'brave'
	set updatetime=100

" Replace ex mode with gq
	map Q gq
"Pretier
	command! -nargs=0 Prettier :CocCommand prettier.formatFile
	vmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)
	" vmap <silent><leader>f  <Plug>(coc-format-selected)<cr>
	" nmap <silent><leader>f  <Plug>(coc-format-Document)<cr>
	" nnoremap <leader>f: CocCommand prettier.formatFile <CR><cr>
	" nmap <silent><leader>f :!  % <cr>

" To save without formatting, use
" 	:noa w

" Automatically deletes all trailing whitespace and newlines at end of file on save.

	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritepre * %s/\n\+\%$//e

" real tab
" inoremap <C-TAB> <TAB>


set shortmess+=c

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>

" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction


" Gopls AutoCommpletion engine
let g:go_gopls_enabled = 1

" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" Setting Ctrl+(j/k) for autocompletion
" inoremap <C-j> <C-n>
" inoremap <C-k> <C-p>

" trigger snippet expand
" imap <C-j> <Plug>(coc-snippets-expand)

" select text for visual placeholder of snippet
" vmap <C-j> <Plug>(coc-snippets-select)

" expand and jump (make expand higher priority)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

" use alt + hjkl to resize windows
nnoremap <silent> <A-j> :resize -2<CR>
nnoremap <silent> <A-k> :resize +2<CR>
nnoremap <silent> <A-h> :vertical resize -2<CR>
nnoremap <silent> <A-l> :vertical resize +2<CR>

" tab management
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt
nnoremap <A-0> 10gt

" jump to next placeholder
let g:coc_snippet_next = '<c-j>'

" jump to previous placeholder
let g:coc_snippet_prev = '<c-k>'



nnoremap <silent> <leader>h :Files<CR>
	let g:fzf_preview_window = 'right:60%'
	" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
	" let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"
	let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor,.mp3,~/./cache}/*"'
	" command! -bang -nargs=? -complete=dir Files
        " call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <C-]> :call AutoPairsJump()<CR>





"Colorscheme Swithcer Function
let s:color = 1       "Gruvbox Activated"
function! ToggleColor()
	if s:color == 1
			set termguicolors
			colorscheme gruvbox
			hi Normal guibg=NONE ctermbg=None
			hi LineNr guibg=NONE
			highlight CursorLineNr gui=bold

			" set background=dark
			" hi Normal ctermbg=NONE guibg=NONE
			let s:color = 0
			set laststatus=0
	else
			" set bg=dark
			" hi Normal ctermbg=NONE guibg=NONE
			set termguicolors
			set bg=dark
			colorscheme tender
			hi Normal guibg=NONE ctermbg=None
			highlight CursorLineNr gui=bold
			let s:color = 1

	endif
endfunction

function! ShowColourSchemeName()
    try
        echo g:colors_name
    catch /^Vim:E121/
        echo "default"
    endtry
endfunction

" let current_color=ShowColourSchemeName();

		" let current_scheme = execute('color')


let s:state = 0
function! ToggleDefault()
	if s:state == 0
		set notermguicolors
		set bg=light
		colorscheme default
		hi Normal guibg=NONE ctermbg=None
		hi LineNr guibg=None gui=bold
		hi CursorLineNr gui=bold guibg=#978821
		let s:state = 1
	else
		set termguicolors
		set bg=dark
		colorscheme gruvbox
		hi Normal guibg=NONE ctermbg=None
		hi LineNr guibg=NONE
		highlight CursorLineNr gui=bold guibg=NONE
		let s:state = 0
	endif
endfunction




let s:bar = 0
function! ToggleBar()
	if s:bar == 0
		set noshowmode
		set laststatus=2
		let s:bar = 1
	else
		set laststatus=0
		" set noshowmode
		let s:bar = 0
	endif
endfunction

let s:switch = 0
function! Monokaitoggle()
	if s:switch == 0
		colorscheme PaperColor
		" hi Normal guibg=NONE ctermbg=None
		" hi LineNr guibg=NONE
		" highlight CursorLineNr gui=bold guibg=NONE
		" hi Normal guibg=#1d1d1d
		" hi LineNr guibg=None guifg=NONE
		" highlight CursorLineNr gui=bold guibg=NONE
		let s:switch = 1
	else
		" colorscheme one
		colorscheme gruvbox
		" hi Normal guibg=#1d1d1d
		" hi LineNr guibg=NONE guifg=NONE
		" highlight CursorLineNr gui=bold guibg=NONE
		let s:switch = 0
	endif
endfunction

nnoremap <silent> <S-m> : call Monokaitoggle() <cr>


nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

let g:lightline = {}
" let g:lightline.colorscheme = 'one'
let g:lightline.colorscheme = 'monokai_pro'
		" let g:lightline.colorscheme = 'tender'


" Current Path
	 nnoremap <c-f> :Files %:h<cr>
	 " nnoremap <c-x>:Files cd %:h <CR>


	" set bg=light
	set bg=dark
	set termguicolors
	" colorscheme tender
	" colorscheme hybrid
	colorscheme gruvbox
	" colorscheme hybrid_material
	" highlight CursorLineNr gui=bold guibg=NONE
	" highlight CursorLineNr gui=bold guibg=NONE guifg= #F1FA8C
	highlight CursorLineNr gui=bold guibg=NONE
	" highlight CursorLineNr gui=bold guibg=NONE guifg=#8fc029

" set cursorline
	hi Normal guibg=NONE ctermbg=None


	nnoremap <silent><C-g> :call ToggleColor()<cr>
	nnoremap <silent> <C-t> : silent! call ToggleTransparency()	 <CR>



source $HOME/.config/nvim/my_snippets.vim

noremap Q :noautocmd qall!<CR>

au BufRead,BufNewFile *urls set filetype=sh

" Blurred Statusline
	let g:lightline.separator = {
		\   'left': '█▓▒░', 'right': '░▒▓'
	  \}
	let g:lightline.subseparator = {
		\   'left': '▓▒░', 'right': '|'
	  \}

" #121212
" nnoremap <silent> <C-E> : set notermguicolors <bar> colorscheme peachpuff<bar>set bg=dark<bar> hi Normal guibg=#121212 <CR>
" nnoremap <C-e> : set termguicolors <bar> colorscheme quantum <cr>
nnoremap <silent> <cr> : call ToggleBar() <cr>
" nnoremap <silent><C-g> : call Toggle_Gruvbox() <CR>
nnoremap <silent><c-e> : call Toggle_Edge() <CR>




" For horizontal resizing, set:

let g:tmux_resizer_resize_count = 5
" For vertical resizing, set:

let g:tmux_resizer_vertical_resize_count = 7


" Tabline Name only
set guitablabel=%t

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" colorscheme gruvbox
	hi LineNr guibg=NONE

let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<C-b>'


" WhiteSpaces Goneee
nnoremap <silent> <leader> w : %s/\s\+$//e <cr>
nnoremap <silent><C-o> : set termguicolors <bar> colorscheme onedark <cr>


" cabb W w
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>

cabb Wq wq

" No Warnings
" set shortmess+=A

" No Swap files
set noswapfile

set title titlestring=
let g:autoswap_detect_tmux = 1



nnoremap <leader>l : !clang % -S -emit-llvm -o %:r <cr>

" nnoremap <leader>b : !go build % && ./%:r <cr>

nnoremap sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

"vim:foldmethod=marker:foldlevel=0

" hi! NonText ctermbg=NONE guibg=NONE

" Setting Default Colorscheme Keybind
	nnoremap <silent> cd : set notermguicolors <bar> : colorscheme default <bar> : set bg=light <bar> : hi Normal guibg=NONE <bar> : set nocursorline<cr>

" Underline the current line with dashes in normal mode
	nnoremap <space><space> yyp<c-v>$r=

" Underline the current line with dashes in insert mode
	inoremap ,u <Esc>yyp<c-v>$r-A

" Get all Checkbox mapping from Vimwiki
	nnoremap <silent><script><buffer><C-space> :call vimwiki#lst#toggle_cb(line('.'), line('.'))<CR>

 " Create Blank Newlines and stay in Normal mode
 " We want a blank line like Spacebar Above/Below
nnoremap <silent> <Space>j o<Esc>k
nnoremap <silent> <Space>k O<Esc>j

nnoremap <silent> <Space>p o<Esc>p
nnoremap <silent> <Space>P O<Esc>P


" nnoremap <Tab> i<Tab><Esc>

"Colorizer lua for every file.
"lua require'colorizer'.setup()


nnoremap <silent><leader>n :set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾<bar>set nu!<bar>set nornu!<CR>
let g:vimwiki_autowriteall = 1

"Bulllets for sent
inoremap ,b ▸<space>


hi Comment ctermfg=green
" nnoremap <silent> <C-E> : colorscheme peach <CR>


let g:neodark#background = '#202020'

let g:eldar_term_text        = "White"
let g:eldar_term_background  = "Black"


"Ultisnip
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Vimwiki Syntax
	" let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'default', 'ext': '.md'}]
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

	" let g:vimwiki_listsyms = '✗○◐●✓'
	let g:vimwiki_listsyms = ' ○◐●✓'
	" let g:vimwiki_listsyms = '◐●✓'
" autocmd Filetype markdown inoremap * ●
" autocmd filetype markdown inoremap # 
" autocmd filetype markdown inoremap ## ○

"Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
" g:haskell_indent_disable = 1


autocmd FileType haskell setlocal shiftwidth=2 softtabstop=2 expandtab
" setlocal shiftwidth=2 softtabstop=2

" Nvim Tree

" nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
" nnoremap <leader>n :NvimTreeFindFile<CR>
" Set tab width to 2 columns
set tabstop=2
" Use 2 columns for indentation
set shiftwidth=2
"Alacritty Problem
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

"EasyAlign
" xmap ga <Plug>(EasyAlign)
" nmap ga <Plug>(EasyAlign)


"Smooth Scroll
" lua require('neoscroll').setup()
let g:doom_one_terminal_colors = v:true

" hi Visual guibg=#000000 guifg=#aaaaaa

colorscheme monokai_ristretto
" par text formatter for gq and gqip
set formatprg=par
set formatprg=par\ -w50
