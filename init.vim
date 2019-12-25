let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
exec 'set rtp+='.s:home
set rtp+=~/.config/nvim/nvim-init/
let s:target_file='/core/*.vim'
exec 'so' s:home.'/etc/plugins.vim'
for core in split(glob(s:home.s:target_file),'\n')
	exec 'so' core
endfor
