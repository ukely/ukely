\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "We Three Kings"
    composer = "John H. Hopkins (1820–1891)"
    arranger = "arr. Jordan Anderson"
    tagline = "Adapted from https://github.com/maiamcc/carols"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:m6 }
                        #ukulele-tuning
                        #"2-1;o;2-2;o;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { b }
                        #ukulele-tuning
                        #"4-4;3-2;2-1-(;2-1-);"

% Chords

TopChords = \chordmode {
  e:m b:7 g d a:m6 b c
}

StaffChords = \chordmode {
  e2.:m b4.:7 e:m
  e2.:m b4.:7 e:m
  g d g2. a4.:m6 b4. e4.:m
  d4.
  g2. c4. g
  g2. c4. g
  g d4 g8 c4 g8 d4 g8
  g2. c4. g
}

% Main music
sopMusic = {
  b'4 a'8 g'4 e'8 |
  fs'8( g') fs' |
  e'4 b'8\rest |

  b'4 a'8 g'4 e'8 |
  fs'8( g') fs' |
  e'4 b'8\rest |

  g'4 g'8 |
  a'4 a'8 |
  b'4 b'8 |
  d'' c'' b' |
  a'8( b') a' |
  g'4 fs'8 |
  e'4. | \break

  << {fs'4\fermata( a'8\fermata)} {s8 s32 s16. s8}>> |
  g'4^\markup\italic"a tempo" g'8 | g'4 d'8 g'4 e'8 | g'4 b'8\rest |
  g'4 g'8 | g'4 d'8 g'4 e'8 | g'4 b'8\rest |
  g'4 g'8 a'4 b'8 | c''4 b'8 a'4 b'8 |
  g'4 g'8 g'4 d'8 g'4 e'8 g'4.\fermata \bar "|."
}

altoMusic = {
  g'4 fs'8 | e'4\3 s8 | ds'8 g' ds' | s4 s8 |

  g'4 fs'8 | e'4\3 e'8 | ds'8 g' ds' | e'4 s8 |

  e'4\3 e'8\3 | fs'4 fs'8 | g'4 g'8 |
  g' s g' | fs'8 s fs' | e'4\3 ds'8 | b4. |

  d'4. | d'4 d'8 | d'4 b8 | c'4 c'8 | b4 s8 |
  d'4 d'8 | d'4 b8 | c'4 c'8 | b4 s8 |

  e'4\3 e'8\3 | fs'4 g'8 | g'4 g'8 |
  fs'4 g'8 | d'4 d'8  | e'4\3 g8 |
  c'4 c'8 | b4. \bar "|."
}

dualMusic =  {
  <g' b>4 <fs' b>8 | <e'\3 b>4 <g>8 | <ds' a>4 <ds' a>8 | <b>4 s8 |

  <g' b>4 <fs' b>8 | <e'\3 b>4 <g>8 | <ds' a>4 <ds' a>8 |  <b>4 s8 |

  <e'\3 b>4 <e'\3 b>8 |  <fs' d'>4 <fs' d'>8 | <g' g>4 <g' g>8 |
  <g' b>8 <fs' c'> <g' d'> | <fs' c'>8 <g' c'> <fs' c'> | <e'\3 b>4 <ds' a>8 | <b>4. |

  \slurSolid
  << <d'\3 a>4\fermata {s8 s32 s16.}>> <d'\3 c'>8\fermata |
  <d' b>4 <d' b>8 | <d' b>4 <g>8 | <c'>4 <c'>8 | <d' b>4 s8 |
  <d' b>4 <d' b>8 | <d' b>4 <g>8 | <c'>4 <c'>8 | <d' b>4 s8 |

  <e'\3 b>4 <e'\3 b>8 | <fs' d'>4 <g' d'>8 | <g' c'>4 <g' d'>8 |
  <fs' d'>4 <g' d'>8 | <d' b>4 <d' b>8 | <e'\3 g>4 <g>8 |
  <c' g>4 <c'>8 | <d' g>4. \bar "|."
}

verseOne = {
  \lyricmode {
    \set ignoreMelismata = ##t
    \set stanza = #"1. "
    We three kings of O -- ri -- ent are;
    Bear -- ing gifts we tra -- verse a -- far,
    Field and foun -- tain, moor and moun -- _ tain,
    Fol -- low -- ing yon -- der star.

    O __ _
  }
  \lyricmode {
    Star of won -- der, star of night,
    Star with roy -- al beau -- ty bright,
    West -- ward lead -- ing, still pro -- ceed -- ing,
    Guide us to Thy per -- fect light.
  }
}
verseTwo = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = #"2. "
  Born a King on Beth -- le -- hem’s plain,
  Gold I bring, to crown Him a -- gain,
  King for -- ev -- er, ceas -- ing nev -- _ er,
  O -- ver us all to reign.
}
verseThree = {
  \lyricmode {
    \set ignoreMelismata = ##t
    \set stanza = #"3. "
    Frank -- in -- cense to of -- fer have I,
    In -- cense owns a De -- i -- ty nigh,
    Pray’r and prais -- ing, all men rais -- _ ing
    Wor -- ship Him, God most High.
  }
}
verseFour = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = #"4. "
  Myrrh is mine, its bit -- ter per -- fume,
  Breathes a life of gath -- er -- ing gloom;
  Sor -- rowing, sigh -- ing, bleed -- ing, dy -- _ ing,
  Seal’d in the stone -- cold tomb.
}
verseFive = \lyricmode {
  \set ignoreMelismata = ##t
  \set stanza = #"5. "
  Glo -- rious now be -- hold Him a -- rise,
  King and God and Sac -- _ ri -- fice,
  Al -- le -- lu -- ia, Al -- le -- lu -- _ ia,
  Earth _ to heav’n re -- plies.
}
