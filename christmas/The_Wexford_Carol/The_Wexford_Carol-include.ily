\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "The Wexford Carol Tune"
    composer = "16th Centry English Carol"
    arranger = "arr. Jordan Anderson"
    tagline = "Loosely adapted from https://www.music-for-music-teachers.com/support-files/wexford-carol-g.pdf"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { c:m6 }
                        #ukulele-tuning
                        #"x;2-1;2-2;o;"

% Chords

TopChords = \chordmode {
  g e:m d f bf d:m
}

StaffChords = \chordmode {
  \partial 4 s4
  g1. e2:m d1 f2 g1 bf2 f2. s4
  g1. e2:m d1 f2 g1 f2 g1
  s2 d1:m bf2 s1 s2 g1 bf2 f2. s4
  g1. e2:m d1 f2 g1 f2 g1
}

% Main music
sopMusic = \relative {
  % Good people
  \partial 4 d'4 |
  g4 g8([ fs]) g2~ |
  g4 a b c |
  d2.
  % Consider
  d4 |
  c b g8( d~) d4~ |
  d e4 f4. g8 |
  f2.
  % What our
  d4 |
  g g8([ fs]) g2~ |
  g4 a b c |
  d2.
  % In sending
  b4 |
  c d b8( g~) g4~ |
  g a g4. f8 |
  g2.
  % With Mary
  g4\3 |
  g4\3 f' d\2( c4~\2) |
  c4\2 a4\2 bf4.\2 c8\2 |
  bf2.\2
  % To God
  d8( c) |
  \times 2/3 {bf4( a) g} g( d4~) |
  d4 e4 f4. g8 |
  f2.
  % In Bethlehem
  d4 |
  g g8([ fs]) g2~ |
  g4 a b c |
  d2.
  % There was
  b4 c d b8( g8~) g4~ |
  g4 a4 g4. f8 |
  g2. \bar "|."

}

altoMusic = \relative {
  % Good people
  \partial 4 s4 |
  d'2 b2~ |
  b4 c g' g |
  fs2.\2
  % Consider
  s4 |
  e d b4 s4 |
  s s4 d2 |
  a2.
  % What our
  s4 |
  d2 b2~ |
  b4 c g' g |
  fs2.\2
  % In sending
  s4 |
  e2 d2~ |
  d4 s a2 |
  b2.
  % With Mary
  s4 |
  s2 a'4\3( f4~\4) |
  f2\4 d2\4 |
  ds2.\4
  % To God
  s4 |
  s2 b2 |
  s2 bf2 |
  a2.
  % In Bethlehem
  s4 |
  d2 b2~ |
  b4 c g' g |
  fs2.\2
  % There was
  s4 |
  e2 d2~ |
  d4 s a2 |
  b2.
}

tenorMusic = \relative {
  % Good people
  \partial 4 s4 |
  g2 d'2~ |
  d4 s s s |
  d2.
  % Consider
  fs4 |
  a, g s4 s4 |
  s s4 bf2 |
  c2.
  % What our
  s4 |
  g2 d'2~ |
  d4 s s s |
  d2.
  % In sending
  fs4 |
  a,2 g2~ |
  g4 s c2 |
  d2.
  % With Mary
  s4 |
  d2\4 s4 s4 |
  s2 f2\3 |
  g2.\3
  % To God
  s4 |
  s2 s2 |
  s4 a,4 d2 |
  c2.
  % In Bethlehem
  s4 |
  g2 d'2~ |
  d4 s s s |
  d2.
  % There was
  fs4 |
  a,2 g2~ |
  g4 s c2 |
  d2.
}

altotenor  = \relative {
  % Good people
  \partial 4 s4 |
  <d' g,>2 <d b>2~ |
  <d b>4 c g' g |
  <fs d>2.
  % Consider
  fs4 |
  <e a,> <d g,> b4 s4 |
  s s4 <d bf>2 |
  <a c>2.
  % What our
  s4 |
  <d g,>2 <b d>2~ |
  <b d>4 c g' g |
  <fs d>2.
  % In sending
  fs4 |
  <e a,>2 <d g,>2~ |
  <d g,>4 s <a c>2 |
  <b d>2.
  % With Mary
  s4 |
  d2\4 a'4\3( f4~\4) |
  f2\4 <d\4 f\3>2 |
  <ds\4 g\3>2.
  % To God
  s4 |
  s2 b2 |
  s4 a4 <bf d>2 |
  <a c>2.
  % In Bethlehem
  s4 |
  <d g,>2 <b d>2~ |
  <b d>4 c g' g |
  <fs d>2.
  % There was
  fs4 |
  <e a,>2 <d g,>2~ |
  <d g,>4 s <a c>2 |
  <b d>2.
}


verseOne = \lyricmode {
  \set stanza = #"1. "
  Good peo -- ple all, __ this Christ -- mas time,
  Con -- sid -- er well, and bear in mind,
  What our good God __ for us has done,
  In send -- ing His __ be -- lov -- ed Son.

  With Ma -- ry ho -- ly, we should pray
  To God with love this Christ -- mas day;
  In Beth -- le -- hem __ up -- on that morn,
  There was a
  blessed Mes -- si -- ah born.
}
verseTwo = \lyricmode {
  \set stanza = #"2. "
  The night be -- fore __ that hap -- py tide,
  The no -- ble Vir -- gin and her guide
  Were long time seek -- ing up and down
  To find a lodg -- ing in the town.
  But mark how all things came to pass:
  From ev -- ’ry door re -- pelled A -- las!
  As long fore -- told __ their ref -- uge all
  Was but a hum -- ble ox -- ’s stall.
}
verseThree = \lyricmode {
  \set stanza = #"3. "
  Let all your songs __ and prais -- es be,
  Un -- to His Heav’n -- ly __ Ma -- je -- sty;
  And ev -- er -- more, __ a -- mongst our mirth,
  Re -- mem -- ber Christ our Sav -- ior’s birth.

  That night the Vir -- gin Ma -- ry mild,
  Was safe de -- liv -- er’d of a child;
  Ac -- cord -- ing un -- to Heav’n’s de -- cree,
  Man’s sweet sal -- va -- tion for to be.
}
verseFour = \lyricmode {
  \set stanza = #"4. "
  Near Beth -- le -- hem __ did shep -- herds keep
  Their flocks of lambs and feed -- ing sheep;
  To whom God’s an -- gels did ap -- pear,
  Which put the shep -- herds in great fear.
  “Pre -- pare and go,” the an -- gels said,
  “To Beth -- le -- hem. Be __ not a -- fraid
  For there you’ll find __ this hap -- py morn
  A prince -- ly babe sweet Je -- sus born.”
}
verseFive = \lyricmode {
  \set stanza = #"5. "
  With thank -- ful heart __ and joy -- ful mind,
  The shep -- herds went the  babe to find,
  And as God’s an -- gels had fore -- told,
  They did our Sav -- ior Christ be -- hold.
  With -- in a man -- ger He was laid,
  And by His side the vir -- gin maid
  At -- tend -- ing on __ the Lord of Life
  Who came to earth to end all strife.}
verseSix = \lyricmode {
  \set stanza = #"6. "
  See how the Lord __ of Heav’n and earth,
  Show’d Him -- self low -- ly __ in His birth;
  A sweet ex -- am -- ple for man -- kind,
  To learn to bear __ a hum -- ble mind.

  If quires of An -- gels did re -- joice,
  Well may man -- kind with heart and voice
  Sing prais -- es to __ the God of Heav’n,
  That un -- to us __ His Son has giv’n.
}
