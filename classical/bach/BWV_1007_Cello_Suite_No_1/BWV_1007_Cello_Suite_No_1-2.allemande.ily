allemande =  {

        \time 2/2
	\key g \major
	\set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set Timing.beamExceptions = #'()
        \set Timing.baseMoment = #(ly:make-moment 1/4)
        \set Timing.beatStructure = #'(1 1 1 1)

	\partial 16 b'16 |
	% 1
	<<{b4( b16) a( g fis)}\\{<g, d'>4}>>  g'16( d e fis) g( a b c) |
	d b g( fis g) e d c b c( d e fis g a b) |
	c a g( fis g) e fis g a, d( fis g) a b c a |
	b( g) g( d) d( b) b( g) g8. b'16 c( b) a( g) |
	a( b c) a g( fis g) a dis,8.\trill c'16 b( a) g( fis) |
	% 6
	g( e\3) e\3( b) b( g) g( b) g8. b16 e g fis a |
	g( fis e) fis g cis g( fis g) cis e,( fis g) e a, g' |
	fis8 d16 e fis d g e fis d( fis g) a( b c!) a |
	b( d, g,) d' b' g a fis g e( g a) b( cis d) b |
	cis( e, g,) e' cis' a b d cis a d b cis a e' g,\3 |
	% 11
	fis8.\3\trill d'16 a( g) fis( e) d a' g e fis d a' c,! |
	b8.\trill g'16 d( c) b( a) g d' c a b g d' a |
	b( g a b cis d e fis g a cis d e) a, g'8 |
	d,16\4 g' fis e fis d a d d,( fis a) c! b8.\trill a16 |
	<<{b8. a16}\\{<g, d'>8. s16}>> g'16( fis e) d' cis e a, g fis d a cis |
	% 16
	d8. a16 d fis a cis d a fis d d8. \bar ":|.|:" a'16 |
	<<{a4( a16) fis g a}\\{d,4( d16) s8.}>> d16( e fis) g a fis d c |
	b( d g) fis g a b c d b a g f( e f) d' |
	e,8^\trill \acciaccatura d16 c8 c'16 a, b c d c' b c d b c a |
	gis8^\trill \acciaccatura fis16 e8 b'16 d, c b c e fis gis a c( b a) |
	% 21
	d8 b,16( c) d( e f) a, gis8.\trill e'16 b' d c b |
	<<{c8. b16}\\{<a, e'>8. s16}>> a'16 g! f e f d bes' a bes( c d) a |
	gis( a b!) e, f d( c b) c e a b <<{b8. a16}\\{e4}>> |
	<<{a8. b16}\\{<a, e'>8. s16}>> c'16 b c g! fis( g a) e d c b a |
	g d'( fis c') b a g a b c d e d e f d |
	% 26
	e8 g,\3 c,16 d' c b a( b c) e d8. c16 |
	d8 a b,16 c'( b a g fis e) g b d c b |
	c8 g a,16 e' fis g fis a( b c) d, c b a |
	g d'( fis a) c( a fis) d
		<<{<b' d,>8. s16}\\{g,8. d'16}>> e16( g a) cis |
	d a fis( e d) f g b c g e( d c) e a c\2 |
	fis,!\3 ( a\2 c\2) e d8. c,16 b g' a, g d' a g' fis |
	g g, b d\4 g\3 b\2 d\2 fis g d\2 b\3 g\4 g,8. \bar ":|."
}
