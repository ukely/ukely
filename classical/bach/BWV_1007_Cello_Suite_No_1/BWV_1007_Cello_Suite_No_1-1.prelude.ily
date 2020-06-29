\include "../../../lib/barre.ily"

prelude = {

	\time 4/4
	\key g \major
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

        % 1
	g16( d' b') a b d, b' d, g,( d' b') a b d, b' d, |
	g,( e' c') b c e, c' e, g,( e' c') b c e, c' e, |
	g,( fis' c') b c fis, c' fis, g,( fis' c') b c fis, c' fis, |
	g,( g' b) a b g b g g,( g' b) a b g b fis |
	g,( e' b') a b g fis g e g fis g b, d cis b |
	% 6
	cis( g' a) g a g a g cis,( g' a) g a g a g |
	fis\3( a\2 d) cis d a g a fis a g a d, fis e d |
	e\3( b g') fis g b, g' b, e\3( b g') fis g b, g' b, |
	e\3( cis d) e\3 d cis b a g'( fis e) d' cis b a g |
	fis( e d) d' a\2 d fis, a d,( e fis) a g fis e d |
	% 11
	gis d f( e f) d gis d b' d, f( e f) d gis d |
	c( e a) b c a e d c( e a) b c a fis! e |
	dis( fis dis) fis a fis a fis dis( fis dis) fis a fis a fis |
	g( fis e) g fis g a fis g fis e d c b a g |
	a( c d) c d c d c a( c d) c d c d c |
	% 16
	g( b f') e f b, f' b, g( b f') e f b, f' b, |
	g( c e) d e c e c g( c e) d e c e c |
	g( fis' c') b c fis, c' fis, g,( fis' c') b c fis, c' fis, |
	g,( d' b') a b g fis e d c b a g a b g |
	a( cis e) fis g e fis g a,( cis e) fis g e fis g |
	% 21
	a,!( c d) e fis d e fis c( a d) e fis d e fis |
	c( a d) fis a cis d8\fermata~ d16 a, b c! d e fis g |
	a fis d e fis g a b c a fis g a b c d |
	ees( d cis) d d( c b) c c a fis e! d a b c |
	d( a d) fis a b c a b g d c b g a b |
	% 26
	d( g, b) d g a b g cis( bes a) bes bes( a gis) a |
	a( g! fis) g g e cis b a( cis e) g a cis d cis |
	d a\2 fis\3( e\3 fis) a d, fis a, d cis b a b cis e |
	d8\noBeam c'!16( b a g fis e d) c'( b a g fis e d |
	c) b'( a g fis e d c b) a'( g fis e d c b |
	% 31
	a) g'( fis e) fis a d, a' e a fis a g a e a |  \break
	fis a d, a' g a e a fis a d, a' g a e a |
	fis a d, a' e a fis a <<{s a[ s    a] s    a[ s     a]} \\
                                {g[ s a\2] s  b\2[ s  d,\4] s}>> |  \break
	<<{s    a'[ s  a] s   a[ s    a] s    a[ s   a] s   a[ s   a]} \\
          {a\2[ s b\2] s c\2[ s d,\4] s b'\2[ s c\2] s d\2[ s b\2] s}>> |
	<<{s    a[ s   a] s   a[ s   a] s   a[ s   a] s   a[ s a]} \\
          {c\2[ s b\2] s c\2[ s a\2] s b\2[ s a\2] s b\2[ s g] s}>> |  \break
	% 36
	<<{s a[ s a] s a[ s a]} \\
          {a\2[ s g] s a\2[ s fis] s}>> g a fis a g a e a |
	fis a d, e f d fis d g d gis d a' d, bes' d, |
	b'! d, c' d, cis' d, d' d, ees' d,
             \fbarre #"VII"{e' d,\4 f' d,\4 fis' d,\4 |
	g'( b,\2 d,\4) b'\2 g' b,\2 g' b,\2 g'( b,\2 d,\4) b'\2 g' b,\2 g' b,\2 |
	g'( a,\3 d,\4) a'\3 g' a,\3 g' a,\3 g'( a,\3 d,\4) a'\3 g' a,\3 g' a,\3 |
	% 41
	fis'( c\2 d,\4) c'\2 fis c\2 fis c\2 fis( c\2 d,\4) c'\2 fis c\2 fis c\2 |}
	<g, b'\2 g'>1\fermata | \bar "|."
}
