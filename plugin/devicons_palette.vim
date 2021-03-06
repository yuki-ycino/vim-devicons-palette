if exists('g:loaded_devicons_palette')
  finish
endif
let g:loaded_devicons_palette = 1

if !get(g:, 'devicons_palette_disable_default_settings')
  " TODO: Provide more default palette
  call devicons_palette#settings({
        \ 'DevIconsPaletteRed': [],
        \ 'DevIconsPaletteLightRed': [],
        \ 'DevIconsPaletteDarkRed': ['rb'],
        \ 'DevIconsPaletteGreen': ['vim'],
        \ 'DevIconsPaletteLightGreen': [],
        \ 'DevIconsPaletteDarkGreen': [],
        \ 'DevIconsPaletteSeaGreen': [],
        \ 'DevIconsPaletteBlue': [],
        \ 'DevIconsPaletteLightBlue': [],
        \ 'DevIconsPaletteDarkBlue': [],
        \ 'DevIconsPaletteSlateBlue': [],
        \ 'DevIconsPaletteCyan': [],
        \ 'DevIconsPaletteLightCyan': [],
        \ 'DevIconsPaletteDarkCyan': [],
        \ 'DevIconsPaletteMagenta': [],
        \ 'DevIconsPaletteLightMagenta': [],
        \ 'DevIconsPaletteDarkMagenta': [],
        \ 'DevIconsPaletteYellow': ['js', 'json', 'markdown', 'license'],
        \ 'DevIconsPaletteLightYellow': [],
        \ 'DevIconsPaletteBrown': [],
        \ 'DevIconsPaletteDarkYellow': ['py'],
        \ 'DevIconsPaletteGray': [],
        \ 'DevIconsPaletteLightGray': [],
        \ 'DevIconsPaletteDarkGray': [],
        \ 'DevIconsPaletteBlack': [],
        \ 'DevIconsPaletteWhite': [],
        \ 'DevIconsPaletteOrange': [],
        \ 'DevIconsPalettePurple': ['lua', 'php'],
        \ 'DevIconsPaletteViolet': [],
        \})
endif

if !get(g:, 'devicons_palette_disable')
  augroup devicons_palette
    autocmd! *
    autocmd FileType nerdtree call devicons_palette#apply()
    autocmd FileType startify call devicons_palette#apply()
    autocmd FileType fern call devicons_palette#delay_apply()
  augroup END
endif
