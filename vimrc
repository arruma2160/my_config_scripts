" VIM Configuration File
" at ~/.vim/

" allow for per-project configuration files
set exrc
set secure
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" set delete and supr
set backspace=indent,eol,start
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=175
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme 
colorscheme cascadia 
set background=dark
" turn on the completion menu
set wildmenu
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" ignore case when searching
set ignorecase
" spell settings
set nospell
" to always see the file name in the bottom of the editor
set modeline
set ls=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l/%L,%c)%)\            " line and column
set statusline+=%P                        " percentage of file

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4

" Youcompleteme
    "let g:ycm_autoclose_preview_window_after_completion=1
    "let g:ycm_autoclose_preview_window_after_insertion=1
    "let g:ycm_python_binary_path = '/usr/bin/python'

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
" let g:DoxygenToolkit_authorName="arruma2160 <arruma@2160.com>"

" Enhanced keyboard mappings
"
" in insert mode maps jj with <Esc>
    imap jj <Esc>
" in normal mode F2 will save the file
	nmap <F2> :w<CR>
" create doxygen comment
	map <F6> :Dox<CR>
" build using makeprg with <F7>
	map <F7> :make<CR>
" build using makeprg with <S-F7>
	map <S-F7> :make clean all<CR>
" main mapping, go to first matching tag
    map tt <c-]>
" main mapping, go back from definition
    map TT <c-t>
" move forward and back through matching tags
    map <c-b> :tprevious<CR>
    map <c-n> :tnext<CR>
" in diff mode we use the spell check keys for merging
"if &diff
 " ” diff settings
 "	map <M-Down> ]c
  "	map <M-Up> [c
  "	map <M-Left> do
  "	map <M-Right> dp
  "	map <F9> :new<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>gg
"else
  " spell settings
  "	:setlocal spell spelllang=en
  " set the spellfile - folders must exist
  "	set spellfile=~/.vim/spellfile.add
  "	map <M-Down> ]s
  "	map <M-Up> [s
"endif

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'
" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'
" Taglists 
Plugin 'taglist.vim'
" have VIM check your syntax on each save with the syntastic extension
Plugin 'scrooloose/syntastic'
let g:syntastic_python_python_exec = "/usr/bin/python3"
let g:syntastic_cpp_compiler_options = ' -std=c++11'
" Completion tool
"Plugin 'Valloric/YouCompleteMe'

" Start automatically 
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" autocmd VimEnter * Tlist

" Now we can turn our filetype functionality back on
filetype plugin indent on

" sourcing scope_maps.vim
so ~/.vim/cscope_maps.vim
