let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let VM_case_setting = ""
let VM_disable_syntax_in_imode =  0 
let BufferlinePinnedBuffers = "/Users/kaixin/Developer/sensortower/overseer/app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryRankingsData.ts,/Users/kaixin/Developer/sensortower/overseer/app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryRankingsForDateData.ts,/Users/kaixin/Developer/sensortower/overseer/app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryHistoryData.ts"
let VM_check_mappings =  1 
let VM_mouse_mappings =  0 
let VM_debug =  0 
let VM_default_mappings =  1 
let VM_persistent_registers =  0 
let VM_live_editing =  1 
let VM_use_python =  0 
let VM_reselect_first =  0 
let VM_highlight_matches = "underline"
let Coc_tsserver_path = "/Users/kaixin/.config/coc/extensions/node_modules/coc-tsserver/node_modules/typescript/bin/tsc"
let VM_use_first_cursor_in_line =  0 
silent only
silent tabonly
cd ~/Developer/sensortower/overseer
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +113 app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryRankingsData.ts
badd +211 app/assets/javascripts/v2/pages/CategoryRankings/components/CategoryRankingsReportTable/CategoryRankingsReportTable.tsx
badd +134 app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryRankingsForDateData.ts
badd +562 app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryHistoryData.ts
badd +50 app/assets/javascripts/v2/services/api/category/categoryHistory/categoryHistory.ts
badd +93 app/assets/javascripts/v2/pages/CategoryRankings/components/CategoryRankingsReportTable/CategoryRankingsReportTable.test.tsx
argglobal
%argdel
$argadd ./
edit app/assets/javascripts/v2/pages/CategoryRankings/components/CategoryRankingsReportTable/CategoryRankingsReportTable.tsx
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
tcd ~/Developer/sensortower/overseer
argglobal
balt ~/Developer/sensortower/overseer/app/assets/javascripts/v2/pages/CategoryRankings/hooks/categoryRankingsForDateData.ts
setlocal fdm=expr
setlocal fde=v:lua.require'lazyvim.util'.ui.foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
57
normal! zo
69
normal! zo
82
normal! zo
95
normal! zo
107
normal! zo
120
normal! zo
148
normal! zo
211
normal! zo
243
normal! zo
244
normal! zo
245
normal! zo
259
normal! zo
272
normal! zo
288
normal! zo
313
normal! zo
315
normal! zo
317
normal! zo
333
normal! zo
345
normal! zo
353
normal! zo
387
normal! zo
413
normal! zo
414
normal! zo
426
normal! zo
430
normal! zo
449
normal! zo
451
normal! zo
151
normal! zo
240
normal! zo
250
normal! zo
274
normal! zo
275
normal! zo
276
normal! zo
290
normal! zo
303
normal! zo
312
normal! zo
321
normal! zo
346
normal! zo
348
normal! zo
350
normal! zo
366
normal! zo
379
normal! zo
381
normal! zo
415
normal! zo
441
normal! zo
449
normal! zo
453
normal! zo
472
normal! zo
474
normal! zo
505
normal! zo
514
normal! zo
529
normal! zo
543
normal! zo
558
normal! zo
573
normal! zo
588
normal! zo
601
normal! zo
605
normal! zo
609
normal! zo
622
normal! zo
635
normal! zo
639
normal! zo
654
normal! zo
667
normal! zo
673
normal! zo
688
normal! zo
701
normal! zo
707
normal! zo
let s:l = 211 - ((27 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 211
normal! 045|
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
