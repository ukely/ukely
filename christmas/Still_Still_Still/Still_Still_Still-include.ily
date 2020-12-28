\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "Still, Still, Still"
    composer = "Salzburg Melody, c. 1819"
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
  ef f:m bf
}

StaffChords = \chordmode {
  ef1 ef f2:m bf ef1
  bf ef bf ef
  ef1 ef f2:m bf ef1
}

% Main music
sopMusic = \relative c'' {
  bf4( ef) g,( bf) |
  ef,2. ef8[ g] |
  f4 f8[ af] d,4 d8[ f] |
  ef2. \bar""\break g4 |

  f4 f8[ g] af4 f\3 |
  g g8[ af] bf4 g |
  f f8[ g] af4 f\3 |
  g g8[ af] bf4 g |

  bf( ef) g,( bf) |
  ef,2. ef8[ g] |
  f4 f8[ af] d,4 d8[ f] |
  ef1 \bar "|."
}

altoMusic = \relative c' {
  g'2 ef |
  g,2. c4\4 |
  c2 bf4 s |
  g2. ef'4 |

  d4 d8[ ef] f4\3 d\4 |
  ef ef8[ f\3] g4 ef |
  d d8[ ef] f4\3 d\4 |
  ef ef8[ f\3] g4 ef |

  g2 ef |
  g,2. c4\4 |
  c2 bf4 s |
  g1 \bar "|."
}

tenorMusic = \relative c' {
  bf2 bf |
  s2. s4 |
  af2 s4 af |
  s2. bf4 |

  bf2 bf2 |
  bf2 bf2 |
  bf2 bf2 |
  bf2 bf2 |

  bf2 bf |
  s2. s4 |
  af2 s4 af |
  s1 \bar "|."
}
tenorWords = \lyricmode {

}

verseOne = \lyricmode {
  \set stanza = #"1. "
  Still, still, still,
  Weil’s _ Kind -- lein _ schlaf -- en _ will.
  Die Eng -- lein _ tun schön ju -- bi -- _ lier -- en,
  Bei dem _ Krip -- plein mu -- si -- _ zier -- en.
  Still, still, still,
  Weil’s _ Kind -- lein _ schlaf -- en _ will.
}
verseTwo = \lyricmode {
  \set stanza = #"2. "
  Schlaf, schlaf, schlaf,
  Mein _ lieb -- es _ Kind -- lein _ schlaf!
  Ma -- ri -- a _ tut es nie -- der -- _ sing -- en
  Ihr -- e _ keu -- sche Brust dar -- _ bring -- en.
  Schlaf, schlaf, schlaf,
  Mein _ lieb -- es _ Kind -- lein _ schlaf!
}
verseThree = \lyricmode {
  \set stanza = #"3. "
  Groß, groß, groß
  Die _ Lieb’ ist _ ü -- ber -- _ groß!
  Gott hat den _ Him -- mels -- thron ver -- _ las -- sen
  Und muss _ reis -- en auf der _ Straß -- en.
  Groß, groß, groß
  Die _ Lieb’ ist _ ü -- ber -- _ groß.
}
verseFour = \lyricmode {
  \set stanza = #"4. "
  Wir, wir, wir,
  Wir _ ruf -- en _ all zu _ dir:
  Tu uns des _ Him -- mels Reich auf -- _ schließ -- en,
  Wenn wir _ ein -- mal ster -- ben _ müss -- en.
  Wir, wir, wir,
  Wir _ ruf -- en _ all zu _ dir.
}
