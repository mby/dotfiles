" leader
let mapleader = " "


" plugins
call plug#begin(stdpath('data') . '/plugged')
	" essentials
	Plug 'editorconfig/editorconfig-vim'
	Plug 'bronson/vim-trailing-whitespace'
	Plug 'justinmk/vim-sneak'
	Plug 'machakann/vim-sandwich'
	Plug 'tpope/vim-commentary'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'scrooloose/nerdtree'
	Plug 'mhinz/vim-signify'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" eye candy
	Plug 'itchyny/lightline.vim'
	Plug 'tomasiser/vim-code-dark'
	Plug 'APZelos/blamer.nvim'
call plug#end()


" config
set updatetime=100 termguicolors
set splitright splitbelow
set clipboard+=unnamedplus mouse=a shortmess+=c
set hidden nobackup nowritebackup noshowmode

call matchadd('ColorColumn', '\%81v', 100)
colorscheme codedark
set t_Co=256
set background=dark
highlight Normal ctermbg=NONE guibg=NONE
highlight nonText ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

let g:loaded_matchparen = 1
let g:sneak#label = 1
let g:blamer_enabled = 1
let g:lightline = {'colorscheme': 'codedark'}


" keybinds
nnoremap ;			:
nnoremap :			;
nnoremap <c-t>			<c-z>
nnoremap <c-e>			10<c-e>
nnoremap <c-y>			10<c-y>

nnoremap <leader>q		:q<cr>
nnoremap <leader>Q		:qa!<cr>
nnoremap <leader>w		:w<cr>

nnoremap <c-h>			<c-w>h
nnoremap <c-j>			<c-w>j
nnoremap <c-k>			<c-w>k
nnoremap <c-l>			<c-w>l

nnoremap <leader>a		<c-^>
nnoremap <leader><space>	:Files<cr>
nnoremap <leader>n		:NERDTreeToggle<cr>
nnoremap <leader>b		:Buffers<cr>
nnoremap <leader>r		:Rg<cr>
nnoremap <leader>gd		:SignifyHunkDiff<cr>
nnoremap <leader>gu		:SignifyHunkUndo<cr>
nnoremap <leader>gb		:BlamerShow<cr>

nnoremap <leader>.		:!ctags -R .<cr>


" CoC
let g:coc_global_extensions = [
	\'coc-clangd',
	\'coc-emmet',
	\'coc-json',
	\'coc-tsserver',
\]

if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>>
