bourreeii = \transpose c c' {
    \key g \minor
    \time 2/2
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \override TextScript #'padding = #1.5
    \repeat volta 2 {
        \partial 4 c'8_\markup { \italic "piano" } d'
        ees'4 d'8 c' b!4 c' d'8( c' b! a) g( f ees d)
        ees8 g( f ees) d f( ees d) c b, c d ees f g a bes4 aes8 g f4 ees d8 ees f g aes bes c' d'
        ees'4 d'8 c' bes8 aes g f ees2.^\trill
    }
    \repeat volta 2 {
        ees8 f g4 g8 f g4 a!4 bes8( a) bes( c') bes( c') d'( bes) g( bes) a( bes) c'( bes) a( g)
        fis4 e8 fis d4 d'8( c') d'4 ees!8( d) ees4 g c'8( b c') d' ees'4 d' c'8( bes!) a( g) bes( a) g( fis) g4 d g, g8( aes)
        bes4 aes8( g) f( e) f( g) bes8( aes) g( f) d'2 ~ d'8 b c' d' ees' d' c' ees' d'( c' b a) g( f ees d)
        ees8( d) f( ees) g( f) aes( g) g,( a, b, c) d( ees f d) f( ees) d( c) ees( d) c( b,)
        c2._\markup { \center-align { "Bourrée 1" "da Capo" } }
    }
}
