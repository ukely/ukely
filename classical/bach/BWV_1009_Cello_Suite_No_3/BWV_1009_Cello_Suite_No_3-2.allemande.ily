allemande = \transpose c c' {
    \key c \major
    \time 4/4
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \override TextScript #'padding = #2.5

    \repeat volta 2 {
        \partial 16*3 g16 a b
        c'16[( b32 a g16) f] e16[( g32 f e16) d] \transpose c c'{c,16 [( g,32 f, e,16) d,] c,16} [ c d e]      % 1
        f16[( e32 d e16) g] d16[( c32\4 b, c16\4) g] b,8[ a,16^\trill( g,)] g32[( f e f g16) e]   % 2
        a,16[ g c' e] f32\3[( e\3 d e\3 f16\3) d] g,16[ f b d] e32\3[( d c d e16\3) c]     % 3
        g,32[( a, b, c d16) f] e16[ c g, b,] c8[ c'] e32\3[( d c\4 b, c16\4) e\3]      % 4  first f to g
        fis16[ a d' fis] g16[ b, a,^\trill g,] <fis a, d a>8.[ d32( e\3] fis32[ g a b c'16) a] % 5 fis up octave
        b16[ d32 c d16 e] f!16[ a, b, f] << { e8[ fis] g[ a] } \\ { c16[ c d c] e\3[ c fis c]} >>  % 6
        << { b8[ c'] d'[ e'] } \\ { g16[ g, a\2 g,] b\2[ g, c'\2 g,] } >> fis'32[( c'\2 d\4 c'\2 fis'16) c'\2] b32\2[( d'\2 e' fis' g'16) b\2]  % 7
        a16\3[ g' fis' d\4] g32\3[( b\2 c'\2 d'\2 e'16) g\3] fis16\3[ e' d' b,] e32[( g a b c'16) e]   % 8
        d16[ c' b g,] c32\4([ b, c16\4) e b,]( c16)[ fis32( e fis16) c32\4( b,] c16\4)[ g32( fis g16) c32\4( b,]   % 9
        c16\4)[ a32\2( g a16\2) c] b,32[( d e fis g16) d'] c'16[ fis32( e fis16) a,] g,32[( b, c d e16) b]   % 10
        a16[ d32( c d16) \transpose c c'{fis,] e,32}[( g, a, b, c16) g] fis32[( a b c' d'16) c] b,16[ g a, fis]  % 11 d, to a,
        g16[ b32( c' d'16) g32( a\2] b16)[ g d fis] <g, g>4 r16   % 12
    }
    \break
    \repeat volta 2 {
        d'16[ e' fis']
        g'16[( fis'32 e' d'16) c'\2] b16\2[( d'32 c'\2 b16\2) a] g16[( d32 c b,16) a,] g,16[ b c' d']           % 13
        e'32[( d' c'\2 b\2 c'16\2) a] f!16([ d32 e f16) b] gis16[ fis e d] c32\4[( b, c\4 d e16) c]               % 14
        f16[ a, c e] d32[( c d e f16) d] gis16[ d b, b] c'32[( b a b c'16) a]                          % 15 f, to f and e, to b,
        f32\3[( e\3 d e\3 f16\3) d] b,32[( a, gis, a, b,16) d] e8.[ e32( fis] gis32[ a b c' d'16) b]           % 16  e, to e
        c'32[( b a gis a16) c] d16[ b e gis] <a, e a>8.[ c'32( d'] e'16)[ a32( b c'16) e32( f]          % 17
        g16)[ bes32( a bes16) c] e16[ bes a^\trill g] a16[ f32( e f16) a] cis32[( d e f g16) a,]       % 18 e, to e
        b,16[ d32( e\3 f16) f32( g] a16)[ b!32( c' d'16) c'16] b32[( f g, f b16) f] e32[( g a b c'16) e]  % 19 d, to b,
        d16[ c' b g,] c32[( e\3 f g a16) c] b,16[ a g g,] a,32[( c\4 d e\3 f16) a,]                           % 20 e, to g,
        g,16[ f e c] f16[ a32\2( g f16) f32( e] d16)[ c'32( b c'16) b32( a] g16)[ f32( e d16) b]        % 21 c, f, to c f
        c'8[ a,32( bes a g)] f32[( e f16) a e]( f16)[ b!32( a b16) f32( e] f16)[ c'32( b c'16) f32( e]  % 22
        f16)[ d'32( c' d'16) f16] e32\3[( d c d e16\3) g] c'16[( b32 a g16) f] e16[ c g, b,]                % 23
        c16[ c'32( b c'16) g32( f] g16)[ e32\3( d e16\3) c] <c e c'>4 r16                              % 24 c, to c twice, no g,
    }
}
