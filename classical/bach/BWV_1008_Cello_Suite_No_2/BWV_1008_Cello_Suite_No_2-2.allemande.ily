\include "../../../lib/barre.ily"

allemande = {

  \time 4/4
  \key d \minor
  \set Staff.midiInstrument = "acoustic guitar (nylon)"

\repeat volta 2 {
  \partial 16 a'16 | % 0
  <<{a8 bes16( a)}\\{<d, f a,>8 s}>> g16 [(f) e (d)] d [(cis) d (e)] a,8 [bes16 g] | % 1 g to d
  d' [a' f d] a8 [cis] {<d a>8. e16} f16 [g a bes] | % 2 rearranged lots
  \fbarre #"II"{<d fis, a,>8 d16}( ees) d16 [(c) bes (a)] c [(bes) a (g)] d'8. [f,16] | % 3 first notes
  e16 [(g bes d)] c [(bes) a (g)] bes [(a) g (f)] <<{a8. a16}\\{f8. f16}>> | % 4
  b16 [f (e d)] e [cis' (d cis)] <<{d8. e16}\\{d,8. s16}>> f' [(e d e)] | % 5
  d16 [(c b c)] b [(a gis a)] gis8 [(fis16 e)] e' [(c\2 a\2 g\3)] | % 6
  <<{e'16 s8.}\\{\fbarre #"V"{f,16\3 a\2 f\3 d\4}}>> <<{d s8.}\\{b16 f' d b}>> gis [(b e gis)] b [d c b] | % 7
  c16 [(a f e)] d [(f e d)] gis8.\trill [a16] b [d e, d] | % 8
  c16 [e a d] <<{b8.\trill a16 a4 s}\\{e4 dis8~ dis32 e^( fis gis a b c d c b c a)}>>   | % 9
  d,16 [gis (a b] a [gis fis e)] <a c, e>8 f16( e) d [(c) b (a)] | % 10
  <gis d' b'>8 e'16( f) e [(d) c (b) ] <<{d' b c a}\\{<a, e'>8 s}>> e'8 [gis] | % 11
  a,8. [cis16] e [g f e] f [a d gis,] a8.\2  % 12
} % end repeat

\repeat volta 2 {
  e16 | % 0
  <cis' a, e'>8. f,16 g [(e) f (a)] cis, [d e bes] a8. \trill [g16] | % 13
  a16 [ a' (f d)] g [b, (cis) a'] g [(f e d)] fis [(d ees) c] | % 14 first f to a
  bes16 [g' a, (g] a) [d (fis) c'] bes [fis (g) bes] d [(a) bes (g)] | % 15 fis scale shifted
  ees16 [(d ees) g] c [(a) bes (g)] d [(c d) g] bes [(fis) g (ees)] | % 16
  c16 [(bes c) bes'] a [(c ees) g,] <<{fis8\trill g16 a}\\{c,8 s}>> d8 [ees16 c] | % 17
  bes16 [d g bes,] a8 [fis'] <<{g8. a16}\\{g,8. s16}>>  bes' [d g, f] | % 18 note 5 d to a
  <e bes>8. f16( g) f( e) d( c) f bes,( a) g16 [g' a bes] | % 19 note redid descent
  bes16 [a (g f)] a [(e) f (d)] bes [d (f a)] d [(a) bes (g)] | % 20
  a,16 [g' (cis d)] e [g, (a) e] (f) [d (bes) d] (gis,) [f' e d] | % 21
  d16 [cis (b a)] c [(a' fis) d] c [(a b) d] f [d (gis,) d'] | % 22 a up octave
  cis16 [(e g) bes\2] e [a, (bes) g] (f) [cis (d) gis,] (a8) [cis] | % 23
  d16 [d' (c) a] (bes) [g (e) cis'] (d) [a f d] d'8. % 24 two d's up octave
} % end repeat

}
