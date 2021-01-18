sarabande = {
  \time 3/4
  \key d \minor
  \set Staff.midiInstrument = "acoustic guitar (nylon)"

 \repeat volta 2 {
  <<{d'8. [e16] e4.\trill d16 [e]} \\ {d4 a2}>>  | % 1
  <f' d a>4. e8 [d c] | % 2
  bes8 [g'] f \prall [e16  (f] g [a bes d,)] | % 3
  cis4. \trill b8 [a g] | % 4
  <<{d'8.[ e16] e4. \trill d16 [e]} \\ {a,4 a2}>>  | % 5 first d up octave, remove middle voice
  <f' d a>4. d8 [e f] | % 6 chord d up octave
  g8 [bes16 (a)] c [(bes) a (g)] d'8 [f,] | % 7
  <<{e4.\trill} \\ {<c g>}>> d8 [c bes] | % 8 chord c up octave
  <<{f'8 [ g16 (a)] a4. g16 [(f)]} \\ {a,4 <bes d>4. s8}>> | % 9
  <<{g'8 [a16 ( bes)] bes4. c16 [( d)]} \\ {bes,4 <g f'>2}>> | % 10
  e'8 [f] g, [c] f [ e] | % 11 c g moved to g c
  f4 f2 | % 12 second f up octave
 }
 \repeat volta 2 {
  <<{a4 a4. \trill bes8} \\ {f8 ees ees4. s8}>> | % 13
  <<{c'8 [bes16 (a)]} \\ {d,4}>> fis8. \trill [ees16] d8 [c]  | % 14
  bes8 [g'] a, [fis'] ees' [d]  | % 15
  <<{bes4.\trill} \\ {<g, d'>}>> a'8 [g f] | % 16
  e8 [bes (a) f' g a] | % 17
  d,8 [aes (g) ees' f g] | % 18
  cis,8 [bes'] a [g16 (f)] e8 [f16 (d)] | % 19
  cis8 [e16 (a)] a,8. g'16 f8 e | % 20
  <<{d8 [e16 (f)] f4. e16 [(d)]} \\ {bes4 g2}>>  | % 21
  <<{e'8 [f16 (g)] g4. a16 [(bes)]} \\ {g,4 <bes cis>4 s}>> | % 22 low cis up octave
  <<{a'8 [cis16 (d)] d,8 [(e16 f32 g)] f8 \trill [ e16 (d)]} \\ {<d a>8 s s g, a4}>> | % 23 drop low f
  d4 f16 [a, (b cis] d [e f g)] | % 24
  <<{a16 [(b c b)] c4. b16 [(a)]} \\ {f4 fis4. s8}>> | % 25
  <<{b16 [ (cis d cis)] d4. e16 [(f)]} \\ {<g,, d'>4 gis'4. s8}>> | % 26
  d'16 [(cis d) f,] a,8 [e'] d' [(cis)] | % 27
  d4 d,2 | % 28
 }
}
