gigue = \transpose c c' {
    \key c \major
    \time 3/8
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \override TextScript #'padding = #2.5

    \repeat volta 2 {
      \partial 8 g8 c'8 c16( d e f) |  % 1
      g8( a) b\2 | c'\2( g\3) e' | c'\2( g\3) e' | % 2-4
      d'16\2( c'\2 d'\2 e') f'8 | % 5
      b8\2( c'\2 e\4) | g,( d) c' | b( g) d' | % 6-8
      d'( fis) g | e8 e'16( d' c'\2 b\2) | % 9-10
      c'8\2 a,16( b, c d) | e8( a,) c' | % 11-12
      c' e( fis) | d8 d'16( c' b a) | % 13-14
      b8 g,16( a, b, c) | d8( g,) b | % 15-16
      b d( e) | c8 c'16( b a g) | % 17-18
      fis8 a16( g fis e) | d4 d8 | % 19-20
      c16\4( d) b,( d) a,( d) | b,( d) a,( d) b,( d) | % 21-22
      c\4( d) b,( d) a,( d) | b,( d) a,( d) g,( d) | % 23-24
      f16\3( g,) e\3( g,) d( g,) | e\3( g,) d( g,) e\3( g,) | % 25-26
      f\3( g,) e\3( g,) d( g,) | e\3( g,) fis( g,) g( g,) | % 27-28
      fis( g,) g( g,) a\2( g,) | g( g,) a\2( g,) b( g,) | % 29-30
      \stemUp a16\2( g,) b( g,) c'8 | d4 a8 | % 31-32
      << { c'16\2( d'\2) ees'8\2 d'\2 | %33
           c'8\staccato\2 bes\staccato\3 a\staccato\3 | % 34
           fis'8( g') a\3 | fis'( g') a\3 | c'16\2( d'\2) ees'8\2 d'\2 | % 35-37
           c'8\staccato\2 bes\staccato\3 a\staccato\3 | %38
           cis'8\2( d'\2) a\3 cis'8\2( d'\2) d\4 } \\ %39
         { d8\4 d\4 d\4 d\4 d\4 d\4 d4\4 d8\4 d4\4 d8\4 d8\4 d\4 d\4 d\4 d\4 d\4 d4\4 d8\4 d4\4 s8 } >>
      g,16( b, d8) e | a,16( c e8) fis | % 41-42
      b,16( d) g( e) f!( d) | c( e a b c' a) | % 43-44
      d'( a fis e d c) | b,( d g) b, a, fis | % 45-46
      g8 d b, | g,4 % 47-48
    }
    \break
    \repeat volta 2 {
      d'16( c') | b16( c') a( b) g( a) | % 49
      f( g) e( f) d( e) | c16 g( a b\2 c'\2 d') | % 50-51
      e'8[ c  e']  | f16( a b c' d' c') | % 52-53
      d( fis gis a b a) | gis16( fis) gis( a) b( gis) | % 54-55
      e4^\trill b8 | c'8 e( f) | d8 d'16( c' b a) | % 56-58
      b8 g,16( a, b, c) | d8( g,) bes | bes d( e) | % 59-61
      c8 c'16( bes a g) | a8 a,16( g, a, bes,) | % 62-63 f, to a,
      c8( a,) a | % 64 f, to a,
      f cis( d) | bes gis( a) | d'16( e' f'8) gis | % 65-67
      d4 f'8 | e'8 d'16( c'\2 b\2 a) | b16( d') c'( a) b( gis) | % 68-70
      a8 e c | a,4 c'8 | % 71-72
      << { c'4 s8 s4 c'8 b4 s8 } \\ { fis16( e fis8) d fis16 a, d8 fis g16( fis g8) d } >> % 73-75 d, to fis
      e16 f! g a bes g | a( g f e f) d' | % 76-77
      c'( b a g c' e) | g, f( e d e c) | g4 g8 | % 78-80
      f16\3( g,) e\3( g,) d( g,) | e\3( g,) d( g,) e\3( g,) | % 81-82
      f\3( g,) e\3( g,) d( g,) | e16\3( g,) fis( g,) g( g,) | % 83-84
      << { fis16( a) d( a) e( a) } \\ { g,8 s4 } >> | % 85
      fis16( a) g( a) e( a) | % 86
      << { fis16( c') d( c') e( c') } \\ { g,8 s4 } >> | % 87
      fis16( c') e( c') d( c') | b( d) a( d) b( d) | % 88-89
      c'( d) b( d) a( d) | b( d) d'( d) f'8 | g,4 d8 | % 90-92
      << { f!16( g) aes8 g f8\staccato ees\staccato d\staccato b8( c') d b( c') d
           f16( g) aes8 g f8\staccato ees\staccato d\staccato fis8( g) d fis( g16) f!( e d) } \\
         { g,8 g, g, g, g, g, g,4 g,8 g,4 g,8 g,8 g, g, g, g, g, g,4 g,8 g,4 s8 } >> % 93-100
      c16( e g8) a | d16( f a8) b | % 101-102
      e16( g) c'( a) bes( g) | a( f d f e d) | % 103-104
      g( d b, \transpose c c'{a, g, f,) | e,( g, c) e, d, b,} | % 105-106
      c8 e g | <c' e c>4 %107-108
    }
}
