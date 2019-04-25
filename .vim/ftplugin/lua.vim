nnoremap <F5> :w<bar> :!Xephyr :1 -ac -br -noreset -screen 1800x900 & sleep 1; DISPLAY=:1.0 awesome -c ~/.config/awesome/rc_new.lua<CR>
