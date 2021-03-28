bourreei = \transpose c c' {
    \key c \major
    \time 2/2
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \override TextScript #'padding = #1.5

    \repeat volta 2 {
        \partial 4 e8 f
        g4 c8\4( b,) c4\4 c' <b g, d>4 a8 b g4 d8 e\3 f4 b,8( a,) b,4 g
        << { f8\3( e\3 d[ e\3]) } \\ { <g,>4 s4 } >> c4 c'8( b) a8( b c' g) fis( b c') e d( b c') c b, d fis a d'4 b8 g d4 fis g4 d g,
    }
    \repeat volta 2 {
        b8 c' d'4 b8 g f4 b e8( g c') d' e'4 c'8 gis a4 f8 a d8 c'( b a) e8 a gis fis e4 b8( e)
        c'8 a( gis a) b( e) c'( e) d'8 b( a b) c'( e) d'( d) c8 e' b\2 c'\2 e4 a8( gis) a4 e a, a8 b c'4 fis8( e) fis4 d
        g,8( d c') a b4 g8 f! e8 g c' e d\4 f' e' c'\2 d'8 c'\2 b\2 a g4 b8 c'
        d'8( b g) a b( g d) e f( d b,) c d( b, g,) f e( c g,) g e( c g,) c' g( e) f( d) e( c) g,( e)
        d( e f) c b,( e f) a, g,( e f) c e g, b, d g4 e8 c g,4 b, c2.
    }
}
