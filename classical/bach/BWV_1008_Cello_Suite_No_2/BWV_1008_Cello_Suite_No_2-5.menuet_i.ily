menuetI = {
  \key d \minor
  \time 3/4
  \set Staff.midiInstrument = "acoustic guitar (nylon)"

 \repeat volta 2 {
  <a' d, f>2 bes4 | % 1
  <bes c, e>8 [ a bes g] a4 | % 2
  <d, bes> g f8 [e] | % 3
  <<{f [(e d) cis b a]} \\ {a8 s s2}>> | % 4
  <a' d, f>2 bes4 | % 5
  <<{bes8 [(a) bes g]} \\ {e8 s s4}>> c'4 | % 6
  <a f> <d f, bes,> <e g, g,> | % 7
  <cis e, a,>2. | % 8
 } % end repeat

 \repeat volta 2 {
  <<{e2} \\ {a,\2}>> d8 [(e16 f)] | % 9
  <<{e8 [(d cis e a,) g\3]} \\ {g\3 s s2}>> | % 10
  <<{a4 (d) cis} \\ {f,2\3 e4}>> | % 11
  <<{g'8 [(f e f d\2) c!\2]} \\ {d,\4 s s2}>> | % 12
  <<{bes'2 c4} \\ {g4 f e}>> | % 13
  <<{a8 [g a f]} \\ {f8 s s4}>> <d' e, bes>4 | % 14
  <c f, a,>4 bes8 [ a g a] | % 15
  f8 [ e f a g bes] | % 16
  <<{a2 \trill bes4} \\ {fis2 r4}>> | % 17
  <<{c'8 [bes c a] } \\ {ees8 s s4}>> fis4 \trill | % 18
  <d' g, bes,>4 <c g c,> <<{bes8 a} \\ {d,}>> | % 19
  <<{c'8 [( bes a bes g) bes]} \\ {<g, d'>8}>> | % 20
  <<{d''4 (cis) d} \\ {g, s f}>> | % 21
  <<{g8 [(f) g e ] f4} \\ {cis8 s s4 d}>> | % 22
  g,8 [(g')] <<{e4. \trill} \\ {a,}>> d8 | % 23
  <<{d2.} \\ {a}>> | % 24
 }
  \key d \major
}
