\include "../../../lib/barre.ily"

sarabande =  {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	% 1
	<<{b'4 c4. b8}\\{<g, d'>4 <g e'>2}>>
	fis'16( a b c) <<{b4\trill}\\{<g, d'>}>> a'8( g) |
	d' f, e8.[( e64\3 d c b] c8[) e] |
	fis!16 c'( b g) fis4^\trill e8( d) |
	% 5
	a'16 fis( d c) b8.\trill g16 b( d g a) |
	b g( e d) cis8.\trill a32( b cis16 d e fis) |
	g cis( d cis) d a g fis e( g) fis( d) |
	% 8
	a d( e cis) d4 d' | \bar ":|.|:"
	<<\fbarre #"II"{fis,8 e16\3 d c'4.}\\{<d, a>4 <a d fis>4.}>>  b'16 a |
	<<{b16 fis( g e)}\\{<g, d'>16 s8.}>>  <<{dis'8.\trill e16}\\{a,8. s16}>>  fis'16 g a b |
	% 11
	dis, a'( b c) b8\trill a16( g) fis( e) a( fis) | g( e) fis( dis) e2 |
	<<{d!8. e32( f) e8. fis16}\\{b,8. s16 <c g>8 s8}>>  g'16( a b c) |
	% 14
	gis, d''(c b) <<{c8. b16}\\{<a, e'>8. s16}>> a'16( g! fis e) |
	<<{d4~d16 e fis g} \\ {r16 b,[c\4 a] b}>> a'( c) b( g) |
	d g( a fis) g4 g, | \bar ":|."

}
