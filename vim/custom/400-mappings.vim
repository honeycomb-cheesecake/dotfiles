" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Remap VIM 0 to first non-blank character
map 0 ^

" Bash like keys for the command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-K> <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

" Fast saving
nmap <C-s> :w!<cr>
nmap <C-x> :x!<cr>
" For when I'm feeling extra-confident: save commit and immediately git push
nmap <silent> <C-X> :x!<cr>
      \ :Gina push<cr>
      \ :Gina status<cr>
      \ :echom "Committing and pushing..."<cr>

" I used to use <leader>w for the above. It's going to take me a while to
" retrain my fingers, so in the meantime, I'll alert myself whenever I
" accidentally use the old keybinding.
"
" Otherwise, it would be way too easy for me to press the old keybinding (which
" does nothing) and wander away from a file without saving it!
nmap <leader>w :echoe "Press <Ctrl-s> to save!"<CR>

" disable shortcut to go into Ex mode, which I never use
nnoremap Q <nop>

" the nuclear option - close everything without saving and quit
nnoremap <leader>Q :qa!<CR>

" i'm constantly accidentally typing :Q instead of :q when I want to quit
" let's just make :Q quit too
command! Q q

" Disable highlight
map <silent> <leader><cr> :noh<cr>

nnoremap <leader>ec :Defx ~/.vim/custom/<cr>
nnoremap <leader>em :e! ~/.vim/custom/400-mappings.vim<cr>
nnoremap <leader>ep :e! ~/.vim/custom/100-plugins.vim<cr>
nnoremap <leader>eP :e! ~/.vim/custom/500-plugins-config.vim<cr>
nnoremap <leader>ev :e! ~/.vimrc<CR>
nnoremap <leader>ss :source ~/.vimrc<CR>

" 'skip a line' variants of o/O
nnoremap <leader>o o<CR>
nnoremap <leader>O O<Esc>O
" append & prepend blank lines and go into insert mode
nnoremap <C-o> o<Esc>O

" like J (which appends next line to current line),
" but works the other way (appends current line to previous line)
nnoremap <Space>j kJ
