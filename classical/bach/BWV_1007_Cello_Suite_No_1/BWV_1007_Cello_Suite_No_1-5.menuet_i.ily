menuetI =  {

	\time 3/4
	\key g \major
	\set Staff.midiInstrument = "acoustic guitar (nylon)"

	\repeat volta 2 {
          %1
          g8( d') b'4 a8( b16 c) |
          b8( a) g( fis) g( d) |
          e( g) c( a) fis( d') |
          <<{b2\trill a4}\\{<d, g,>2 d4}>> |
          a8( fis') c'4 b8( c16 d) |
          % 6
          c8( b) a( g) fis( e) |
          fis( g16 a\2) g8( fis) e( fis) |
          d4 a d | }
	\repeat volta 2 {
          d8( fis) a4 g8( a16 b) |
          a8( g) fis( e) d fis |
          % 11
          b,( d gis) a b d |
          a, d'( c b) c4 |
          dis,8( fis a) c b a |
          b( e, g,) a' c b |
          a( g fis e) b dis |
          % 16
          e4. e8[ d! c] |
          b( d) g4 d8( e16 f) |
          f8( d e) c a b |
          cis( e) a4 e8( fis!16 g) |
          g8( e fis) d fis a, |
          % 21
          d( fis a) c! b d |
          e,( g b) d c e |
          d fis, g b, d fis |
          <<{g2.}\\{g,2.}>> |}

}
