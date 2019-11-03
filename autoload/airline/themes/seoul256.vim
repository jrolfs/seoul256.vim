
" Color: darkTeal           #007173 | Color: darkSalmon         #be7572 ~
" Color: lightTeal          #6fbcbd | Color: dimSalmon          #e0bebc ~
" Color: darkBlue           #007299 | Color: lightSalmon        #ffbfbd ~
" Color: lightBlue          #0099bd | Color: darkYellow         #bdbb72 ~
" Color: darkGreyBlue       #7299bc | Color: hotYellow          #ffdd00 ~
" Color: lightGreyBlue      #98bcbd | Color: lightYellow        #dedd99 ~
" Color: cyan               #97dddf | Color: prettyDarkYellow   #bdbc98 ~
" Color: darkSkyBlue        #719cdf | Color: reallyDarkYellow   #999872 ~
" Color: reallyLightSkyBlue #bce0ff | Color: reallyLightYellow  #dfdebd ~
" Color: skyBlue            #98bede | Color: superLightYellow   #ffffdf ~
" Color: darkIndigo         #999abd | Color: lightMustard       #dfbc72 ~
" Color: darkPurple         #9b1d72 | Color: darkGreen          #719872 ~
" Color: reallyDarkPurple   #333233 | Color: hotGreen           #006f00 ~
" Color: hotPink            #e12672 | Color: lightGreen         #98bc99 ~
" Color: lightPink          #e17899 | Color: brown              #be9873 ~
" Color: reallyLightPink    #ffc0de | Color: darkGrey           #4b4b4b ~
" Color: superLightPink     #ffdfdf | Color: lessDarkGrey       #565656 ~
" Color: darkRed            #9a7372 | Color: lightGrey          #bfbfbf ~
" Color: lightRed           #e09b99 | Color: medGrey            #6b6b6b ~
" Color: reallyDarkRed      #730b00 | Color: medLightGrey       #727272 ~
" Color: darkOrange         #e19972 | Color: medSlightGrey      #616161 ~
" Color: lightOrange        #ffde99 | Color: reallyDarkGrey     #3f3f3f ~
" Color: reallyLightOrange  #ffbd98 | Color: white              #d9d9d9 ~

let g:airline#themes#seoul256#palette = {}

let s:gui00 = '#333233'
let s:gui01 = '#4b4b4b'
let s:gui02 = '#007299'
let s:gui03 = '#719872'
let s:gui04 = '#bdbc98'
let s:gui05 = '#727272'
let s:gui06 = '#bce0ff'
let s:gui07 = '#4b4b4b'
let s:gui08 = '#ffc0de'
let s:gui09 = '#bfbfbf'
let s:gui0A = '#dedd99'
let s:gui0B = '#6fbcbd'
let s:gui0C = '#719cdf'
let s:gui0D = '#ffbd98'
let s:gui0E = '#ffc0de'
let s:gui0F = '#ffdd00'

let s:cterm00 = 0
let s:cterm01 = 0
let s:cterm02 = 59
let s:cterm03 = 65
let s:cterm04 = 102
let s:cterm05 = 108
let s:cterm06 = 188
let s:cterm07 = 15
let s:cterm08 = 161
let s:cterm09 = 94
let s:cterm0A = 3
let s:cterm0B = 2
let s:cterm0C = 31
let s:cterm0D = 12
let s:cterm0E = 129
let s:cterm0F = 5

let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#seoul256#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#seoul256#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#seoul256#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#seoul256#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let g:airline#themes#seoul256#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#seoul256#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
