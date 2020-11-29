\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "The Coventry Carol Tune"
    composer = "16th Centry English Carol"
    arranger = "arr. Jordan Anderson"
    tagline = "Adapted from https://acollectionofchristmascarols.com/"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { c:m6 }
                        #ukulele-tuning
                        #"x;2-1;2-2;o;"

% Chords

TopChords = \chordmode {
  g:m d bf f c:m c:m6 g
}

StaffChords = \chordmode {
  g2:m d4 g2:m bf4 f2 g4:m d2.
  g4:m d g:m c2:m d4 g2.:m s2
  bf4 f2 bf4 f2 g4:m c2:m6 c4:m d2.
  g4:m d g:m c2:m d4 g2. s2
}

% Main music
sopMusic = \relative {
  g'4 g fs |
  g2 bf4 |
  a2 g4 |
  fs2. | \break

  g4 a bf |
  c2 a4 |
  g2.~ |
  <<g2 {s4 s}>> d'4 |
  c2 bf4 |
  a2 bf4 | \break

  a2 g4 |
  fs2. |
  <<g4 {s8 s}>> fs4 g |
  c2 a4 |
  b2.~ |
  b2. \bar "|."
}

altoMusic = \relative {
  d'4 d d |
  d2 d4 |
  f2 d4 |
  d2. |

  d4 d d |
  ef2 d4 |
  d2.~ |
  d2 f4 |
  f2 f4 |
  f2 g4 |

  ef2 c4 |
  d2. |
  d4 d d |
  ef2 d4 |
  d2.~ |
  d2. \bar "|."
}

tenorMusic = \relative {
  bf4 bf a |
  bf2 bf4 |
  c2 bf4 |
  a2. |

  bf4 a g |
  g2 a4 |
  bf2.~ |
  <<bf2 {s4 s_\mf}>> bf4 |
  a2 bf4 |
  c2 d4 |

  c2\4_\markup\italic"dim." g4 |
  a2. |
  <<bf4 {s8_\pp s_\markup\italic"rall."}>> a4 g |
  g2 a4 |
  g2.~ |
  g2. \bar "|."
}

bassMusic = \relative {
  g4 g d |
  g2 g4 |
  f2 g4 |
  d2. |

  g4 fs g |
  c,2 d4 |
  g2.~ |
  g2 bf,4 |
  f'2 d4 |
  f2 bf,4 |

  c2 ef4 |
  d2. |
  g4 d ef |
  c2 d4 |
  g,2.~ |
  g2. \bar "|."
}

verseOne = \lyricmode {
  \set stanza = #"1. "
  Lul -- lay, Thou lit -- tle ti -- ny Child,
  By, by, lul -- ly, lul -- lay; __
  Lul -- lay, Thou lit -- tle ti -- ny child,
  By, by, lul -- ly, lul -- lay. __
}
verseTwo = \lyricmode {
  \set stanza = #"2. "
  O sis -- ters too, how may we do,
  For to pre -- serve this day; __
  This poor Young -- ling for whom we sing,
  By, by, lul -- ly, lul -- lay? __
}
verseThree = \lyricmode {
  \set stanza = #"3. "
  Her -- od, the king, in his rag -- ing,
  Charg -- ed he hath this day; __
  His men of might, in his own sight,
  All chil -- dren young to slay. __
}
verseFour = \lyricmode {
  \set stanza = #"4. "
  Then woe is me, poor Child, for Thee,
  And ev -- er mourn and say; __
  For Thy part -- ing nor say nor sing,
  By, by, lul -- ly, lul -- lay. __
}
