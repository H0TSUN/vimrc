




set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 



 " 이부분에 플러그인 설치할 부분을 넣어주면 된다. 
" let Vundle manage Vundle, required 
 Plugin 'VundleVim/Vundle.vim' 
 Plugin 'tpope/vim-fugitive' 
 Plugin 'git://git.wincent.com/command-t.git' 
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'} " 
 Plugin 'ascenator/L9', {'name': 'newL9'}
 Plugin 'xolox/vim-misc'
 Plugin 'xolox/vim-easytags'
 Plugin 'ronakg/quickr-cscope.vim'
 Plugin 'majutsushi/tagbar'
" " All of your Plugins must be added before the following line \
call vundle#end()   " required 
" " 플러그인 설정 관련 부분은 vundle#end 밑에줄에 넣어주면 된다. 
 filetype plugin indent on " required
												 

"tag seting"
set tag=./tags;/ 
"easy-tag " tags를 비동기로 불러와준다. (필수) tag사이즈가 커지게 되면 vim이
" 블록되는 시간이 길어져서 답답하다 
 let g:easytags_async=1 
" " highlight를 켜면 좋지만 이것도 속도가 느려진다. 
 let g:easytags_auto_highlight = 0 
" " struct의 멤버변수들도 추적이 된다. 
 let g:easytags_include_members = 1 
" " 현재 프로젝트에서 쓰는 tags파일을 우선 로드하고 없을 경우 global tags를
" 로드한다. 
 let g:easytags_dynamic_files = 1

"vim setting"
set tabstop=2 "탭 간격을 2 칸으로 지정
set visualbell "비프음 대신 화면 깜빡임
set cindent "C 스타일 들여쓰기
set autoindent "자동 들여쓰기
set smartindent "지능적인 들여쓰기?
set incsearch "점진적 검색
set ruler "행,열번호
set hlsearch "검색어 강조
set number "왼쪽 줄번호
set showmatch " 일치하는 괄호 하이라이팅
syntax on "구문강조
filetype on "파일 종류에 따른 구문 강조




function! LoadCscope() 
				let db = findfile("cscope.out", ".;") 
				if (!empty(db)) 
								let path = strpart(db, 0, match(db, "/cscope.out$")) 
								set nocscopeverbose " suppress 'duplicate connection' error 
								exe "cs add " . db . " " . path 
								set cscopeverbose " else add the database pointed to by environment variable 
				elseif $CSCOPE_DB != "" 
								cs add $CSCOPE_DB 
				endif 
endfunction 
au BufEnter /* call LoadCscope()

nmap <F8> :TagbarToggle<CR>

