set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"Call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'moll/vim-node'
Plugin 'rust-lang/rust.vim'
Plugin 'dracula/vim'
Plugin 'fatih/vim-go', {'do':':GoInstallBinaries'}
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'vim-syntastic/syntastic'
Plugin 'python/black'
Plugin 'scrooloose/nerdtree'
Plugin 'stephpy/vim-yaml'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-glaive'
Plugin 'google/vim-codefmt'
Plugin 'bazelbuild/vim-bazel'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ajswis/vim-colorful-go'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'cespare/vim-toml'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'psliwka/vim-smoothie'
Plugin 'RobertAudi/GoldenView.vim'
Plugin 'voldikss/vim-floaterm'
Plugin 'tpope/vim-commentary'
Plugin 'haya14busa/vim-asterisk'
Plugin 'inside/vim-search-pulse'
Plugin 'uarun/vim-protobuf'
Plugin 'w0rp/ale'
Plugin 'vim-test/vim-test'
Plugin 'ruanyl/vim-gh-line'
Plugin 'preservim/tagbar'
Plugin 'tomlion/vim-solidity'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'arcticicestudio/nord-vim'
Plugin 'mtth/scratch.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'morhetz/gruvbox'



" Js
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'
Plugin 'maxmellon/vim-jsx-pretty'

"Goyo Settings
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  hi! Normal ctermbg=NONE guibg=NONE
endfunction



autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Ale
call plug#begin('~/.vim/plugged')
 Plug 'w0rp/ale'
call plug#end()

let g:ale_fixers = {
 \ 'javascript': ['eslint', 'prettier']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" Python
Plugin 'raimon49/requirements.txt.vim', {'for':'requirements'}
Plugin 'Chiel92/vim-autoformat'


let g:lightline = {
		\ 'colorscheme': 'gruvbox',
		\  }
set laststatus=2 " for airline

func! s:my_color_setup() abort
	hi Pmenu guibg=#D3D3D3
	hi PmenuSel guibg=#D3D3D3
	hi Visual cterm=reverse ctermbg=0 ctermfg=NONE guibg=Grey40
endfunc

augroup colorscheme_coc_setup | au!
	au ColorScheme * call s:my_color_setup()
augroup end

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


let g:coc_disable_startup_warning = 1


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:go_decls_mode = 'fzf'
let g:go_highlight_operators = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_assignments = 1


syntax on

set background=dark
colorscheme gruvbox
set t_Co=256

" Settings

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Misc
set gcr=a:blinkon0
set scrolloff=3
set guicursor=i:blinkwait700-blinkon400-blinkoff250

set noerrorbells
set laststatus=2
set number
set ruler
set encoding=utf-8
set cursorline
set smartindent
set showmatch
set hlsearch
set number
set autoindent noexpandtab tabstop=4 shiftwidth=4

set autochdir

" Remap

let mapleader = "`" "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>f :GFiles <CR>
nnoremap <leader>g :Rg <CR>
nnoremap <leader>t :TagbarToggle <CR>
nnoremap <leader>m :noh <CR>
nnoremap <leader>s :Scratch <CR>

nnoremap <C-f> :GFiles <CR>
nnoremap <C-g> :Rg <CR>
nnoremap <C-t> :TagbarToggle <CR>
nnoremap <C-m> :noh <CR>
nnoremap <C-s> :Scratch <CR>



nmap <silent> t <C-t> :TestFile<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> <C>gq :GoDecls <CR>

" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
cnoreabbrev fzf FZF

" NerdTree
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeWinSize=50

map <leader>n :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Vimgh
let g:gh_line_map = '<leader>gh'
let g:ghi_line_blame_map = '<leader>gb'

" Cairo test
au BufReadPost *.cairo set filetype=cairo
au Filetype cairo set syntax=cairo

let g:LanguageClient_serverCommands = {
\ 'cairo': ['node', '~/.vim/cairo-ls/server/out/server.js', '--stdio']
                        \ }

let g:LanguageClient_loggingLevel = 'DEBUG'
let g:LanguageClient_loggingFile =  expand('~/.vim/cairo-ls/cairo-language-client.log')
let g:LanguageClient_serverStderr = expand('~/.vim/cairo-ls/cairo-language-server.log')

" resize
if exists("##VimResized")
    if &diff
        au VimResized * wincmd =
    endif
endif

au FileType python setlocal formatprg=autopep8\ -

set shell=zsh

let g:coc_node_path = trim(system('which node'))
