"README

"----------vim bundle & directory-----------------
"Save this file at home directory ./~vimrc 
"if you add plugin --> open vim, :PluginInstall --> pop up done! (it is completed)

"--------------ctag
"--make ctag database!
"current folder : ctags *
"include sub directory : ctags -R .
"open vim, :UpdateTags --> it can use global tags

"--How to use

"ctrl + J : function, struct
"Ctrl + t : before moving sorce code

"------------cscope

"--make cscope database!
"cscope -RUbq
"--hot to use
" if you install quick-scope, It can use key.
"\s - 커서에 해당하는 단어에 대한 모든 심볼을 찾아준다
"\g - 커서에 있는 단어에 대한 정의(global definition)을 찾아준다
"\c - 커서에 있는 함수명을 호출하는 부분을 찾아준다
"\f - 커서에 있는 파일명에 대해 모든 파일을 찾아준다
"\i - 커서에 있는 include하는 파일을 모두 찾아준다

"--------tagbar
"F8


sudo apt-get install cscope
설치 후에 아래 쉘을 만들어서 /usr/bin에 넣어두고 쓴다.
#!/bin/sh
rm -rf cscope.files cscope.files
find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print > cscope.files
cscope -i cscope.files

실행
./mkcscope.sh	


