let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let VM_check_mappings =  1 
let VM_mouse_mappings =  0 
let VM_default_mappings =  1 
let VM_persistent_registers =  0 
let VM_highlight_matches = "underline"
let Coc_tsserver_path = "/Users/ithaka/.config/coc/extensions/node_modules/coc-tsserver/node_modules/typescript/bin/tsc"
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
badd +233 app/assets/javascripts/v2/pages/AppAnalysis/hooks/appAnalysisDataForMetric.ts
badd +210 app/assets/javascripts/v2/pages/AppAnalysis/utils/aggregateAppAnalysisData.ts
badd +463 app/assets/javascripts/v2/pages/AppAnalysis/hooks/appAnalysisData.ts
badd +1 app/assets/javascripts/v2/pages/AppAnalysis/AppAnalysisReportContent.tsx
badd +48 app/assets/javascripts/v2/pages/AppAnalysis/components/AppAnalysisReportMetricList/AppAnalysisReportMetricList.tsx
badd +6 app/assets/javascripts/v2/components/ComparisonMetricItem/ComparisonMetricItem.tsx
badd +128 app/assets/javascripts/v2/components/ComparisonMetric/ComparisonMetric.tsx
badd +128 app/assets/javascripts/v2/components/ComparisonMetric/ComparisonMetric.test.tsx
badd +0 ~/Developer/sensortower/overseer
badd +10 app/assets/javascripts/v2/components/withLoading/withLoading.tsx
badd +78 cypress/integration/v2/app_analysis/category_rankings/report_drawer_category_rankings_spec.ts
badd +32 app/assets/javascripts/v2/pages/AppAnalysis/components/AppAnalysisReportMetricList/AppAnalysisReportMetricListPrefixIcon.tsx
badd +67 cypress/integration/v2/app_analysis/constants.ts
badd +19 app/assets/javascripts/v2/pages/CategoryRankings/utils/apps.ts
argglobal
%argdel
$argadd ~/Developer/sensortower/overseer
edit app/assets/javascripts/v2/pages/AppAnalysis/AppAnalysisReportContent.tsx
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
if exists(':tcd') == 2 | tcd ~/Developer/sensortower/overseer | endif
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
