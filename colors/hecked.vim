highlight clear
if exists("syntax_on")
    syntax reset
endif

set background=dark
let g:colors_name="hecked"

function! SetGroup(g, fg, bg, gui)
    let f = 'highlight ' . a:g
    let f .= ' ctermfg=' . s:colors[a:fg]
    let f .= ' ctermbg=' . s:colors[a:bg]
    let f .= ' cterm=' . s:guis[a:gui]

    execute f
endfunction

function! SetTheme(theme)
    for group in a:theme
        call SetGroup(group[0], group[1], group[2], group[3])
    endfor
endfunction

let s:colors = {
    \'red':         203,
    \'orange':      215,
    \'yellow':      221,
    \'green':       113,
    \'blue':        39,
    \'lightblue':   111,
    \'purple':      207,
    \'pink':        219,
    \'black':       232,
    \'darkgray':    234,
    \'gray':        240,
    \'lightgray':   245,
    \'white':       250,
    \'bright':      255,
    \'none':        0,
    \'n':           0
\}

let s:guis = {
    \'n':   'NONE',
    \'b':   'bold',
    \'u':   'underline',
    \'i':   'italics'
\}

" Order:  GROUP         COLOR           BACKGROUND  GUI
let s:theme = [
    \['Normal',         'white',        'none',      'n'],
    \['Underlined',     'none',         'none',      'u'],
    \['Comment',        'gray',         'none',      'n'],
    \['Constant',       'red',          'none',      'n'],
    \['String',         'green',        'none',      'n'],
    \['Identifier',     'white',        'none',      'n'],
    \['Function',       'orange',       'none',      'n'],
    \['Statement',      'blue',         'none',      'n'],
    \['PreProc',        'orange',       'none',      'n'],
    \['Type',           'lightblue',    'none',      'n'],
    \['Special',        'white',        'none',      'n'],
    \['Ignore',         'white',        'none',      'n'],
    \['Error',          'white',        'red',       'n'],
    \['Todo',           'black',        'white',     'n'],
    \
    \['Visual',         'white',        'gray',      'n'],
    \['NonText',        'lightgray',    'none',      'n'],
    \['LineNr',         'gray',         'none',      'n'],
    \
    \['Pmenu',          'white',        'darkgray',  'n'],
    \['PmenuSel',       'purple',       'lightgray', 'n'],
    \['PmenuSbar',      'gray',         'gray',      'n'],
    \['PmenuThumb',     'purple',       'purple',    'n'],
    \
    \['Cursor',         'darkgray',     'bright',    'n'],
    \['CursorColumn',   'none',         'darkgray',  'n'],
    \['CursorLine',     'none',         'darkgray',  'n'],
    \['CursorLineNr',   'none',         'none',      'n'],
    \['MatchParen',     'purple',       'none',      'n'],
    \
    \['ErrorMsg',       'white',        'red',       'n'],
    \['WarningMsg',     'white',        'yellow',    'n'],
    \['MoreMsg',        'blue',         'darkgray',  'n'],
    \['ModeMsg',        'white',        'darkgray',  'n'],
    \['Question',       'purple',       'darkgray',  'n'],
    \['Title',          'purple',       'darkgray',  'n'],
    \['Search',         'black',        'pink',      'n'],
    \
    \['TabLine',        'white',        'darkgray',  'n'],
    \['TabLineSel',     'white',        'gray',      'n'],
    \['TabLineFill',    'gray',         'darkgray',  'n'],
    \
    \['StatusLine',     'white',        'darkgray',  'n'],
    \['StatusLineTerm', 'white',        'darkgray',  'n'],
    \['StatusLineNC',   'white',        'darkgray',  'n'],
    \['StatusLineTermNC', 'white',      'darkgray',  'n'],
    \['VertSplit',      'darkgray',     'darkgray',  'n'],
    \
    \['DiffAdd',        'green',        'none',      'n'],
    \['DiffChange',     'yellow',       'none',      'n'],
    \['DiffDelete',     'red',          'none',      'n'],
    \['DiffText',       'none',         'none',      'n']
\]

call SetTheme(s:theme)
