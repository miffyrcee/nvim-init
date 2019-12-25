" Required:
call plug#begin(expand('~/.config/nvim/plugged'))

"*****************************************************************************
"" Plug install packages
"*****************************************************************************
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'sheerun/vim-polyglot'
	Plug 'kshenoy/vim-signature'
	Plug 'sbdchd/neoformat'
	Plug 'rhysd/accelerated-jk'
	nmap j <Plug>(accelerated_jk_gj)
	nmap k <Plug>(accelerated_jk_gk)

"" Vim-Session
	Plug 'xolox/vim-misc'
	" Plug 'xolox/vim-session'
    let g:session_autosave = 'no'


"" Snippets
	" Plug 'SirVer/ultisnips'
	" Plug 'honza/vim-snippets'

" Ui
	Plug 'ryanoasis/vim-devicons'
	let g:webdevicons_enable_denite = 1
	Plug 'taigacute/spaceline.vim'
	let g:spaceline_seperate_style= 'curve'
	Plug 'numirias/semshi',{'for':'python'}
	let g:semshi#excluded_buffer=['*']
	Plug 'Yggdroot/indentLine'
	Plug 'luochen1990/rainbow'


" Ciw and Operator
	Plug 'AndrewRadev/sideways.vim'
	Plug 'tpope/vim-surround'
	Plug 'wellle/targets.vim'
	autocmd User targets#mappings#user call targets#mappings#extend({
	\ ' ': {'separator': [{'d': ' '}]},
    \ })
	Plug 'tpope/vim-repeat'
	silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
    Plug 't9md/vim-choosewin'
    nmap - :<C-u>ChooseWinSwapStay<CR>

" Buffer
	Plug 'junegunn/vim-peekaboo'
	Plug 'mbbill/undotree'
	if has("persistent_undo")
		set undodir=$HOME/.cache/undog.log
		set undofile
	endif
	Plug 'bagrat/vim-buffet'

" Check and Read
	Plug 'KabbAmine/zeavim.vim'
	nmap <silent><m-f> <esc>viw<Plug>ZVVisSelection
	nmap <leader>d <esc>:Docset 

" Tags
    Plug 'ludovicchabant/vim-gutentags'
	Plug 'skywind3000/gutentags_plus'

    let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
    for layer in split(glob(s:home.'/layers/*.vim'),'\n')
        exec  'so' layer
    endfor

call plug#end()
" Required:
