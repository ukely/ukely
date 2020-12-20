\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "Carol of the Bells"
    composer = "Mikola Leontovych (1877–1921)"
    arranger = "arr. Jordan Anderson"
    tagline = "Adapted from https://acollectionofchristmascarols.com/"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

  %% from http://lilypond.1069038.n5.nabble.com/if-then-else-in-Lilypond-with-config-file-td163526.html
  %% \ifDefinedThenElse symbol expression else-expression
  %%
  %% If the symbol is defined, returns the expression.
  %% Otherwise, returns the else-expression.

  ifDefinedThenElse =
  #(define-music-function (parser location sym music else) (symbol? ly:music? ly:music?)
    (if (defined? sym)
     music else))

  %% Example:
  %%
  %% \ifDefinedThen #'leadWords  \lyricsto lead \ifDefined #'leadWords


% Main music
sopMusic = \relative c'' {
  \tempo 4 = 170
  bf4-> a8 bf^\markup\italic"pluck each note, avoid hammer-on" g4 |
  bf4-> a8 bf g4 |
  bf4-> a8 bf g4 |
  bf4-> a8 bf g4 | \break
  \repeat volta 2 {

    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 | \break

    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 | \break

    bf4->\p\< a8 bf g4
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |

    d'4->^\mf c8\2 d bf4\2 |
    d4 c8\2 d bf4\2 |
    d4 c8\2 d bf4\2 |
    d4 c8\2 d bf4\2 |

    % 4th System
    g'4 g8 g f[ ef] |
    d4 d8 d c[ bf\1] |
    c4 c8 c d[ c] |

    g4 g8 g g4 |
    d8 e fs g a bf |
    c d c4 bf |

    d,8^\p e fs g a bf |
    c d c4 bf |

    %third page
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |
    bf4-> a8 bf g4 |

 \ifDefinedThenElse #'easyTarget
    % Easy doesn't have chord
    { g2.~ | g~ | g~ | g | } { <g d>2.~ | <g d>~ | <g d>~ | <g d> | }
    d'4->^\markup\italic"rall." c8-> d-> g,4->~ |
    g2.\fermata \bar "|."
  }
}

sopWordsBelow = \lyricmode {
  Hark! how the bells, sweet sil -- ver bells,
  All seem to say, throw cares a -- way.

}
sopWords = \lyricmode {
  \repeat unfold 16 { \skip 1 }
  Christ -- mas is here, bring -- ing good cheer,
  To young and old, meek and the bold,

  Ding, dong, ding, dong, that is their song.
  With joy -- ful ring, all ca -- rol -- ing.

  \repeat unfold 48 { \skip 1}
  Mer -- ry, mer -- ry, mer -- ry, mer -- ry Christ -- mas!
  Mer -- ry, mer -- ry, mer -- ry, mer -- ry Christ -- mas!

  On, on they send, on with -- out end
  Their joy -- ful tone to ev -- ’ry home!

  Hark! how the bells, sweet sil -- ver bells
  All seems to say throw cares a -- way.
}

altoMusic = \relative c'' {
  s2.*4 |

  \repeat volta 2 {
    % 1
    g2. |
    f |
    ef |
    d |

    % 2
    ef2. |
    d |
 \ifDefinedThenElse #'easyTarget
    % Easy doesn't need to drop to 4th string
    { c2. | } { c2.\4 | }
    g |

    % 3
 \ifDefinedThenElse #'easyTarget
    % Easy doesn't need to drop to 4th string
    { c2. | } { c2.\4 | }
    d |
    ef |
    d |

    % 4
    g2.\3 |
    e\3 |
    f\3 |
    g\3 |

    %third system
    bf2.\2 |
    g\2 |
    g\2 |
    d |

    s2. |
    e4( fs) g |

    s2. |
    e4( fs) g |

    %final
    d2. |
    ef |
    c |
    ef |

    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |

    bf'4\2 a8\2 bf\2 s4|
    g,2. \bar "|."
  }

}
altoWords = {
  \lyricmode {
    Ding! Dong! Ding! Dong!
    Ding! Dong! Ding! Dong!

    \set associatedVoice = "sopranos"
    One seems to hear words of good cheer,
    From ev -- ’ry -- where fill -- ing the air.

    Oh, how they pound, rais -- ing the sound
    O’er hill and dale, tell -- ing their tale.
    \unset associatedVoice
  }
  \set stanza = \markup\dynamic"f "
  \lyricmode{
    Gai -- ly they ring while peo -- ple sing
    Songs of good cheer, Christ -- mas is \set associatedVoice = "tenors"
    here.

    Ding, dong, ding, dong,
    Ding, dong, ding, dong,
    Ding, dong, ding, dong,
    Ding, dong, ding, dong,
    \unset associatedVoice
    Ding! Dong!
    Ding! Dong!

    Ding! Dong!
    Ding! Dong!

    Ding! Dong!
    Ding! Dong!
    Ding, dong, ding dong! __
  }
}

tenorMusic = \relative c' {
  s2.*4 |

  \repeat volta 2 {
    % 1
    s2.*4

    % 2
    g'2. |
    f |
    ef |
    d |

    % 3
    g2. |
    g |
    g |
    g |

    % 4
    bf2.\2 |
    bf\2 |
    bf\2 |
    bf\2 |

    %third system
    s2.*4 |

    s2.*4 |

    %final
    g2. |
    g |
    f |
    s |

    s |
    s |
    s |
    s |

    s2. |
    s2. \bar "|."
  }
}
tenorWords = \lyricmode {
  \repeat unfold 76 {\skip 1}
  On, on they send on with -- out end
  Their joy -- ful tone to ev -- ’ry home.

  Dong!
}

bassMusic = \relative c {
  s2.*4 |

  \repeat volta 2 {
    s2.*8

    ef'2. |
    g, |
    c\4 |
    g |

    g2. |
    g |
    g |
    g |

    %third system
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |

    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |
    bf4 a8 bf g4 |

    %final
    g2. |
    g |
    a |
    g |

    s |
    s |
    s |
    s |

    s |
    s \bar "|."
  }
}
bassWords = \lyricmode {
  \repeat unfold 52 { \skip 1 }

  \repeat unfold 4 { \skip 1 }
}