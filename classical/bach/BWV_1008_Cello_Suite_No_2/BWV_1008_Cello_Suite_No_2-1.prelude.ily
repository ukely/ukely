prelude = {

    \time 3/4
    \key d \minor
    \set Staff.midiInstrument = "acoustic guitar (nylon)"

	d'8 f a4 ~ a16 [ f16 (e d) ] | % 1
	cis16 [ (e g a) ] bes4 ~ bes16 [ a (g f) ] | % 2
	e16 [ ( g bes\2 cis) ] e8. [ bes16\2] a [ (g f e) ] | % 3
	f16 [ (g a f)]  d8 [(c bes a)] | % 4
	bes16 [(d f a)] d8. c16 bes [(a g f)] | % 5
	e16 [( g bes d)] c [ a bes g] f [e g bes,]  | % 6
	a16 [(c e g)] c8. bes16 a [(g f e)] | % 7
	d16 [(f a c)] bes [g a f] e [(f a f)] | % 8
	g,16 [(bes d f)] bes8. a16 g [(f e g)] | % 9
	a,16 [(c e g)] c [( a e g)] f [(a d, ees)] | % 10
	d16 [(a bes d)] g [(bes a c)] bes [g d' f,] | % 11
	e16 [(b c e)] g [d e c] bes [g e' bes] | % 12
	f'8 [a, ] c4 ~ c16 [bes (a g)]  | % 13 (f up octave)
	dis' [(a bes c)]  d [(c bes a)] fis' [(ees d c)] | % 14 (fis to dis and d up)
	bes16 [(a g bes)] d4 ~ d16 [c bes a] | % 15
	gis16 [( b  c d)] e [(d c b)] gis' [(f e d)] | % 16 (e up)
	c16 [(b a c)] f [e f gis] a [f d c]  | % 17
	b16 [(d gis b)] d8. [c16] b [(a gis a)]  | % 18
	c,16 [(e a c)] e8. [c16] b [(a gis a)]  | % 19
	d,16 [(f a d)] f8. [e16] d [(c\2 b\2 d)] | % 20
	e,16 [d' (c b)] a [c (b a)] d, [b' (a gis)] | % 21
	c,16 [a' (g f)] cis [g' (f e)] d [f (e d)]  | % 22
	gis,16 [d' (e f)] b [f (e d)] gis, [d' (c b)] | % 23
	a16 [b (c e)] a [b c a] e [c a g] | % 24
	fis'16 [(a, c d)] ees8. [d16] c [(bes c) a']  | % 25 (fis up)
	bes,16 [(a bes) d] g, [ees' (f g)] a, [g' (f ees)]  | % 26
	d16 [(c d) f] bes, [g' (a bes)] cis, [bes' (a g)] | % 27
	f16 [( e f) a] d, [bes' (c d)] e, [d' (c bes)] | % 28
	a16 [(g a) c] f,\3 [d' (e f)] g,\3 [f' (e d)] | % 29
	cis16 [g (f e)] a, [e' (f g)] cis [bes (a g)] | % 30
	f16 [(g a) cis] d [a (g f)] a [f (e d)] | % 31
	gis16 [d (e f)] a, [f' (e d)] gis [f (e d)] | % 32
	cis16 [(b cis) e] a [e (cis e)] a, [g' (f e)]  | % 33
	f16 [(e f) a] d [a (f a)] d, [c' (bes a)]  | % 34
	g16 [(f\3 g) cis] e [cis g cis] a, [g' (f e)] | % 35
	d16 [a' d e] f [d a f] d [c' bes a] | % 36
	g16 [(a bes) d,] ees [f g a\2] bes\2 [g ees' g,]  | % 37
	f16 [(g a) cis,] d [e f g] a [f d' f,]  | % 38
	e16 [(f g) bes,] a [b cis d] e [bes g' bes,] | % 39
	cis8 [a] g'4 ~ g16 [bes (a g)] | % 40 cis up
	f16 [(e d) e] f [d a' f] d' [a f d] | % 41
	gis,8 [f'] d'4 ~ d16 [f e d] | % 42
	cis16 [b a b] cis [a d a\2] e' [a,\2 f' a,\2] | % 43
	g'16 [e cis\2 e] a,\3 [cis\2 e f] g [f g e] | % 44
	f16 [d\2 cis\2 d\2] a\3 [cis\2 d\2 e] f [e f d] | % 45
	e16 [cis\2 b\2 cis\2] a\3 [b\2 cis\2 d] e [d e cis] | % 46
	d [b (a b)] f [(gis b) cis] d [cis d b] | % 47
	<g, e' cis'>4 \fermata r4 r4 | % 48
	bes'16 [g (fis g)] ees [g d g] ees [g bes d,]  | % 49
	cis16 [(e g a)] bes8. [a16] g\3 [(fis\3 g\3)] e'] | % 50
	f,16\3 [d' bes g] a [f e g] f [d cis e]  | % 51
	d [bes a g] fis' [(a, c ees)] d [c bes a] | % 52 fis up
	bes16 [g' a g] ees [g d g] ees [(g bes) d,]  | % 53 (all up from g')
	<cis bes g'>8. f16 (e [d cis b] a [g a b)] | %f e)] | % 54
	cis16 [(a d e)]  f [(e d c] bes [a g a)] |% f)] | % 55 d to cis
	bes16 [(a cis e)] g [(f e d] cis [b a g)] | % 56 e to bes
	d'16 [(a d f)] a [d, f a] d [bes c a]  | % 57 f to d
	g,16 [d' g a] bes [g (fis g)] ees' [g, d' g,] | % 58
	<a, g' cis>2. | % 59
	<a f' d'>2. | % 60
	<a e' d'>2. | % 61
	<a e' cis'>2. | % 62
	<d f d'>2. \bar "|." % 63

}
