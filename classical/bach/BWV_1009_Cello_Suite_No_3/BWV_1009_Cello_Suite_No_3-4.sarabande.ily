\include "../../../lib/barre.ily"

sarabande = \transpose c c' {
    \key c \major
    \time 3/4
    \set Staff.midiInstrument = "acoustic guitar (nylon)"

    \repeat volta 2 {
        <c g, e c'>4 << { c'8.[ a16] b4 } \\ { d4 } >> %1
        <c g, e bes>4 << { bes8.[ g16] a4 } \\ { f4 } >> %2
        << { d8[ e16( f)] f8. d16 e8 f } \\ { b,!8 s8 <c g,>8 s8 s4 } >> % 3
        c16( b, c a,) b,8[ d] \transpose c c'{g, f,} % 4
        <e g, g>4 << { g8. e16 fis16([ d fis a]) } \\ { a,4 s4 } >> %5
        <d a, fis c'>4^\markup{\tiny "B II"} << { c'8. a16 c'16([ b a g]) } \\ { <g, d>4 s4 } >> % 6
        << { <g a>8 bes16( c'!) bes8 a16( c') ees'8[ fis] } \\ { cis8 s8 d8 s8 s4 } >> % 7
        \stemUp g4 \stemNeutral <g g,>2 %8
    }
    \repeat volta 2 {
        << { b!4 b4 d16( c b, a,) b!4 b4 d16( c d b,) } \\ { g,4 g,4 s4 gis,4 gis,4 s4 } \\ % 9
        { d8[ f16( e)] f8. e16 s4 d8[ f16( e)] f8. e16 s4 } >> c16( e gis b) a8.( b32 c') d8[ b] % 10-11
        a8( fis) a16( gis fis e) d8^\trill( cis16 d) cis8[ a] e'8[ g'16( f')] g'8[ e'] cis'8\2 bes4\2 a16\2 g\3 f\3( e\3 g\3 cis\4) %11-14
        d8\4[ f' g\3 e'] a16\2( b\2 d' cis') %15
        d'4 <d\4 a\2 f\3 d'>2 % 16
        ^\markup{\tiny "B V"} << { fis8. g32( a) g16([ fis e fis]) g( e fis a) } \\ { <c a,>4 s2 } >> % 17
        << { c'8. d'32( e') d'16([ c'\2 b\2 c'\2]) d'( b\2 c'\2 e') } \\ { <a, fis>4 s2 } >> % 18
        d'8[ b, c a] << { b8[ c'] } \\ { d4 } >> % 19
        << { c'8[ b a b] g[ a,] bes,8 e16( f) g16([ f e g]) f8[ b,] c8 fis16( g) a([ g fis a]) g( d' g f) } \\ %
        { <g, d>4 s2 s4 a,4 s4 s4 b,4 s4 } >> e8[ c a, d] g,8[ c16\4( b,)] c4\4 <c g, e c'>2 %
    }
}
