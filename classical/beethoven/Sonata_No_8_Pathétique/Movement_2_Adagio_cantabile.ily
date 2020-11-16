%Command shortcuts
hideTempo = \set Score.tempoHideNote = ##t
fingerLeft = \set fingeringOrientations = #'(left)
fingerRight = \set fingeringOrientations = #'(right)
fingerUp = \set fingeringOrientations = #'(up)
fingerDown = \set fingeringOrientations = #'(down)
fingerUpDown = \set fingeringOrientations = #'(up down)
allowScriptUnderSlur = {
	\once \override TextScript #'avoid-slur = #'inside
	\once \override TextScript #'outside-staff-priority = ##f}
lengthenStems = \override Stem #'(details beamed-lengths) = #'(5)
shortenStems = \override Stem #'(details beamed-lengths) = #'(1)
revertStemLenghts = \revert Stem #'(details beamed-lengths)
hideTupletNumber = \override TupletNumber #'stencil = ##f
unhideTupletNumber = \revert TupletNumber #'stencil
hideTupletBracket = \override TupletBracket #'bracket-visibility = ##f


topmain = \relative c' {

  \set Staff.midiInstrument = "acoustic guitar (nylon)"
  \key as \major
  \time 2/4
  \tempo 4=30 \hideTempo
  \stemUp \slurUp \tieUp

  <c'-4>4( <bes-3> |\noBreak			%1
  es4. <des-4>8) |\noBreak
  <c-3>[( <es-4> as  bes)] |\noBreak
  es,4.-3( <e-4>8 |
  f4) <bes,^2^4\2>8.( <c\2-5>32  <des!\2-4>) |	%5
  es!4( <a,^4> |
  des) c16^.^5( bes^. as!^.  g)^. |
  bes4-3-5\2(  as8-4) s |
  <c-4>4( <bes-3> |\noBreak			%9
  es4. <des-4>8) |\noBreak
  <c-3>[( <es-4> as  bes)] |\noBreak
  es,4.-3( <e-4>8 |
  f4) <bes,^2^4\2>8.( <c\2-5>32  <des\2-4>) |	%13
  es!4( <a,-4> |
  des) c16^5^.( bes^4^. as!^4^.  g^3)^. |
 <bes-5\2>4(  <as-4>8) b16.\rest c,32 |

c'4^\markup{\finger "5-1"}~ c16( as'-4 g  f-2) |		%17
 c4 ~ c16( <as-4> g  f-2) |
 c'4 ~ c16( as'-4 g  f-1) |
 <es-2>8(  d)~
 \allowScriptUnderSlur
 d8[(^\markup \tiny \override #'(baseline-skip . 1) {
    \halign #-4
    \center-column {
      \musicglyph #"scripts.turn"
      	 }}^\markup{\halign #-2 \finger "6535"}
 f16.-4  es32)] |
 es4^4
 \allowScriptUnderSlur
 <f,^1>8.[_(^\markup{
  	\halign #-3  \center-column {
  		\general-align #Y #0.2 \finger "3101"
		\general-align #Y #-2 \tiny \musicglyph #"scripts.turn"
		\general-align #Y #-3 \teeny \natural	}
       }  as32^2  c_)] |		%21
 \grace {\stemUp \scaleDurations #' (1 . 6) {b16[_(^1 c^2 d_)^4] } \stemNeutral}
 c32(^3 bes!)^2 g'16(~^5 g f32 es d![ c bes^3 a c bes as  f)]^1 |
 \stemUp es8-2 s16 bes'-3( g-1 bes-4 g-2  es-1) |
 \stemUp <as>8[ <as>^3^5 <as>^4^5 <as f>^3^4^5] |
   s8*3
   bes16.-2(  es32-4)  |			%25
 es16-5(  d) d-5(  c) c-5(  ces) ces-5(  bes-3)|
 <bes g>2~^4^5 |
 <bes^5 g^4> |
 <c as>4( <bes-3> |			%29
 es4.  <des-4>8) |
 <c-3>[( <es-4> as  bes)] |
 \fingerUp <es,-3>4.( <e-4>8 |
  f4) \lengthenStems <bes,^2^4>8.( <c-5>32  <des!-4>) \revertStemLenghts|	%33
 es!4( \fingerUp <a,-2-4> |
  des)  <c-5>16^.( bes^. as!^.  g)^. |
 <bes-5 g-3>4(  as8-4)\noBeam <es-2> |
 \lengthenStems <as-4>[( ces \allowScriptUnderSlur bes <as-4>)] \revertStemLenghts |	%37
 <g-3>(  des') r4 |
  \lengthenStems as8[( ces \allowScriptUnderSlur bes <as-4>)] \revertStemLenghts |
   as-5(  g-4) d'4\rest |
   \lengthenStems <as-4>8[( ces \allowScriptUnderSlur bes <as-4>)] \revertStemLenghts|		%41
 \stemNeutral

 <fis' fis,>-5~\sf \times 2/3 {  fis16[ <dis-4>-. <b-2>-.] } b8~\sf \times 2/3 {  b16[ <gis-4>-. <e-2>-.] } |
 \hideTupletNumber \hideTupletBracket
 e'8~\sf \times 2/3 {  e16[ <cis-4>-. <ais-3>-.] } <b b,>8-.\noBeam <dis, a>-. |
 \times 2/3 { <e-5  b-3>16[\fp gis,-1 gis] gis[ gis gis]
   gis[_\markup{\vspace #.5 \italic "decresc."} gis gis] gis[ gis gis] } | \noBreak
 \stemDown \slurDown
 e'8-4\3[( gis\3 \allowScriptUnderSlur fis\3 e\3-4)] |		%45
 <dis\3^3>(  a'\3\3) r4 |
  <e-4\3>8[( gis\3 <e-4\3>  <dis-3>)] |
 <d-4-5>4. d8 |
 d4. d8 |			%49
 des!4. des8 |
 c!4\4( <bes-3> |
 es4.  <des-4\4>8) |
  <c-3\4>[( <es-4> as  bes)] |		%53
 <es,-3>4.( <e-4\3>8 |
  \lengthenStems f4\3) <bes,-4>8.( <c-5\4>32  <des-4\4>) \revertStemLenghts|
 es4( <a,-4> |
  des) \times 2/3 {  des16-5[(  c-4) bes-3-.]  bes-4[(  as!) g-.] } |	%57
 <bes-5>4(  as8-4) s |
   \stemUp \slurUp
 c'4( <bes-4> |
 es4.  <des-4>8) |
  <c-3>[( <es-4> as  bes)] |					%61
 <es,-3>4.( <e-4>8 |
  f4) \lengthenStems <bes,-2-4>8.( <c-5>32  <des-4>) \revertStemLenghts|
 es4( <a,-4> |
  des) \times 2/3 {des16^5[( c^4) bes^3-.]  bes^5[(  as!) g-.] } |	%65
 \stemNeutral
 \slurNeutral
 \tieNeutral
 <as  c,>8 b\rest b\rest <es-2>16.(  e32) |
 f8~_\< \times 2/3 {  f16[(  es!) des-.(]  c[-._\! bes-.^3_\>  as)-.] }  g32[( des' bes  g)]_\! |
  %\allowScriptUnderSlur
  as16.-2([^\markup \tiny  \override #'(baseline-skip . 1) {
    \halign #-2  \center-column {
    	 \finger "6434"
	 \musicglyph #"scripts.turn"}}
  c32^5]  es,8^1) r es16.-4( e32) |
 f8~ \times 2/3 { f16[( es!-4) des-4-.(]
   c[-. bes-4-. as-4)-.] g[( des' g,-5)] } |	%69
   as8-4 b'\rest \grace{ \override Stem  #'stroke-style = #"grace" {\stemUp es8^3_(_\markup{\dynamic rf} \stemNeutral}
   \revert Stem #'stroke-style }
   \unhideTupletNumber
   \times 2/3 {des16)[( c  des)]} \times 2/3{ f[(  es) des-.] } \hideTupletNumber|
 c8 b\rest \stemUp \slurUp \grace {
\override Stem   #'stroke-style = #"grace"
   c8^4(
  \revert Stem #'stroke-style }
 \times 2/3 {
     bes16)[_\markup{ \dynamic rf}( a  bes)]  des[(  c) bes_.] } |
 s4 \grace {
\override Stem   #'stroke-style = #"grace"
   c,8^4(
  \revert Stem #'stroke-style }
 \times 2/3 {
     bes16)[_\markup{\dynamic rf}( a  bes)]  des[(  c) bes_.] } |
 \stemDown
 as!16 \pp d,\rest as'^4 d,\rest \fingerLeft <as'-5 c as'>4^\markup{" "}^\fermata \bar "|."		%73
}

topsecondary =  \relative c' {
 \slurDown \stemDown \shortenStems
 as'16 \p es as es g es g es |		%1
 as es as es bes'-3\2 es, bes'-2\2 es, |
 as es bes'\2 es, c'\2 as\3 d\2 as\3 |
 g\3 bes\2 g\3 bes\2 g\3 bes\2 g\3 bes\2 |
 g\3 bes\2_2 g\3 bes\2_3 g\3 es\4 g\3 es\4 |		%5
 as\2 es\3 as\2 es\3 es\3_2 c\4 es\3 c\4 |
 f des f des des des des des |
 des\4( es des\4  es)

  \hideTupletBracket
  \unhideTupletNumber
 \times 2/3 { c[^. es^. as,^.] }
 \times 2/3 { \stemNeutral \hideTupletNumber
 c^\markup{\finger 1}[-. es-. as-.] \stemDown }
 as,16\4 es' as,\4 es' g, es' g, es' |		%9
 c as' c, as' es bes'-2\2 es, bes'\2 |
 es, as es bes'\2 as\3 c\2 as\3 d\2-2 |
 g,\3 bes\2 g\3 bes\2 g\3 bes\2 g\3 bes\2 |
 g\3 bes_2\2 g\3 bes_3\2 g\3 es\4 g\3 es\4 |		%13
 as es as es es c\4 es c\4 |
 f des f des des des des des |
 des\4 es des\4 es c8 s |
  r16 c^3 c^2 c^1 c^2 c^1 c^2 c^1 |		%17
  <c g>_5 <c g> <c g> <c g> <c as>_4 <c as> <c as> <c as> |
  <e bes>_5 <e bes> <e bes> <e bes> <f\3 c\4>_4 <f\3 c\4> <f\3 c\4> <f\3 c\4> |
  <f\3 bes,> <f\3 bes,> <f\3 bes,> <f\3 bes,> <f\3 b,> <f\3 b,> <d b>_3_5 <d b> |
  <g es c>_4 <g es c> <g es c> <g es c> <es as,>^2 <es as,> <es as,> <es as,> |		%21
  r <g es bes>_4 <g es bes> <g es bes> r <as, d> <as d> <as d> |
  <g es'>8_1_2 r r4 |
 es'16(_2_\markup{\vspace #.5 \italic "cresc."}  d) d_2(  c) c_2(  b)_\markup{\italic "(m.s.)"} b_2(  bes_1) |
  <g' es bes>s r16 bes,_1( g_2 bes g  es'_3) |		%25
 <as f>4_\markup{\vspace #.5 \italic "cresc."} <as f> |
 f16\3-2(_\p  fes\3-1)^\< fes\3-2(  es-1) es-2(  d) d-2(  es-3)^\! |
 es_2(  <fes\3^1>)^\> <fes\3^2>(  <es^1>) <es^2>(_\markup{\dynamic "pp"}  <d^1>) <d^2>(  <des^1>)^\! |
 \fingerUp c( \p es <as-3> <es-1>) g( es g  es) |		%29
 as es as es bes'\2-3 es, bes'-2 es, |
 as es bes'\2 es, c'\2 as\3 d\2 as\3 |
 g\3 bes\2 g\3 bes\2 g\3 bes\2 g\3 bes\2 |
 g\3 <bes\2_2> g\3 <bes\2_3> g es g es |		%33
 as es as es es c\4 es c\4 |
 f des f des des des des des |
 des es des es c8 r |
  \unhideTupletNumber
 \times 2/3 { <es  ces>16[\pp <es ces> <es ces>]}
 \times 2/3 {<es ces>[ <es ces> <es ces>]}
 \times 2/3 {<es ces>[ <es ces> <es ces>]}
 \times 2/3 { <es ces>[ <es ces> <es ces>]} |		%37
  \hideTupletNumber
  \times 2/3 {
  <es des>[ <es des> <es des>] <es des>[ <es des> <es des>]
    <es des>[ <es des> <es des>] <es des>[ <es des> <es des>] |
  <es ces>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>]
    <es ces>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>] |
  <es bes>[ <es bes> <es bes>] <es bes>[ <es bes> <es bes>]
    <es bes>[ <es bes> <es bes>] <es bes>[ <es bes> <es bes>] |
  <es ces>[ <es ces> <es ces>] <es ces>[_\markup{\vspace #.5 \italic "cresc."} <es ces> <es ces>]
    <es ces>[ <es ces> <es ces>] <es ces>[ <es ces> <es ces>] |		%41
 }
 s2*3 |
 \times 2/3 {
  \stemUp<b'  gis>16[\pp <b gis> <b gis>] <b gis>[ <b gis> <b gis>]
    <b gis>[ <b gis> <b gis>] <b gis>[ <b gis> <b gis>] | \noBreak	%45
  <b a>[ <b a> <b a>] <b a>[ <b a> <b a>]
    <b a>[ <b a> <b a>] <b a>[ <b a> <b a>] |
  <b gis>[ <b gis> <b gis>] <b gis>[ <b gis> <b gis>]
    <b gis>[ <b gis> <b gis>] <b gis>[ <b gis> <b gis>] | \noBreak
  <ces as!>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>]
    <ces as>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>] | \noBreak
  <ces as>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>]
    <ces as>[ <ces as> <ces as>] <ces as>[ <ces as> <ces as>] |	%49

  <bes! as!>[_\markup{\vspace #.8 \italic "cresc."} <bes as> <bes as>]
    <bes as>[ <bes as> <bes as>]
    <bes g>[ <bes g> <bes g>] <bes g>[ <bes g> <bes g>] |
   c,![(\p  <es-2>)_. <es-1>_.]  <as-3>[(  <es-2>)_. <es-1>_.]  g[(  es)_. es_.]  g[(  es)_. es_.] |
   as[(  es)_. es_.]  as[(  es)_. es_.]  <bes'-3>[(  es,)_. es_.]
   \once \override Fingering #'staff-padding = #'()
   <bes'_2>[(  es,)_. es_.] |
   as[(  es)_. es_.]  bes'[(  es,)_. es_.]  c'[(  as)_. as_.]  d[(  as)_. as_.] |	%53
   g[(  bes)_. bes_.]  g[(  bes)_. bes_.]  g[(  bes)_. bes_.]  g[(  bes)_. bes_.] |
   g[(  bes) bes]  g[(  <bes-2>) <bes-3>]  g_2[(  es) es]  g[(  es) es] |
   as[(  es) es]  as[(  es) es]  es[(  c) c]  es[(  c) c] |
   f[(  des) des]  f[(  des) des]  g[(  des) des]  des[(  des) des] |			%57
   des[(  es) es]  des[(  es) es]  c[^. es^. as,^.] \stemNeutral  <c^1>[-. es-. as-.] \stemDown \slurDown |
   c,\4[(  es) es]  c\4[(  es) es]  bes[(  es) es]  bes[(  es) es] |
   es[(  as) as]  es[(  as) as]  es[(  <bes'-3\2>) <bes-2\2>]  es,[(  bes'\2) bes\2] |
   es,[(  as) as]  es[(  bes'\2) bes\2]  as\3[(  c\2) c\2]  as\3[(  d\2) d\2] |			%61
   g,\3[(  bes\2) bes\2]  g\3[(  bes\2) bes\2]  g\3[(  bes\2) bes\2]  g\3[(  bes\2) bes\2] |
   g\3[(  bes\2) bes\2]  g\3[(  <bes^2\2>) <bes^3\2>]  g[(  es) es]  g[(  es) es] |
   as[(  es) es]  as[(  es) es]  es[(  c\4) c\4]  es[(  c\4) c\4] |
   f[(  des) des]  f[(  des) des]  g[(  des) des]  des[( des) des] |		%65
 }
 s2*5									%66 - %70
 s4 g4( |
  \stemNeutral  as!8) b\rest \stemDown g,4 |

 \stemNeutral
}


bottom = \relative c {
  \hideTupletNumber
  \hideTupletBracket
  \key as \major
  \time 2/4
  \stemDown \slurDown

  as'4_4( des_2\4 |		%1
  c_1\4  g_4) |
  as8[( g f'\4  f\4)] |
  es4\4( es\4^4 |
  des!\4  des\4) |		%5
  c\4^1( f\2^2 |
  bes,^5  es\3)^2 |
  s8 s as, r |
  << {
    as'16 es as es g es g es |	%9 (1)
    as es as es g es g es |
    as es g es f \fingerDown <as,-4> f' <as,-3> |
  } \\ {
    \fingerDown
    as4( <des-3\4> |			%9 (2)
    <c-4\4>  g) |
    <as-4>8[( g  f') f] |
  } >>
  es16( \fingerDown <g,-4> <bes-2> <es-1> \fingerUp <g-2> bes g  bes) |
  \fingerDown <des,-5>( <g,-3> bes <des-1> \fingerUp <g-2> bes g  <des-4>) | %13
  << {
    \fingerDown c16\4 <es-2> <c-3\4> <es-1> c f c f |
    des f des f bes, es bes es |
    r es g es as8 r |
  } \\ {
    \fingerDown <c,-5\4>4 f( |
    <bes-3>  es,) |
    <as,-5>4. r8 |
  } >>
  s2*7					%17 - 23
  bes2_4 |
  <es_2>8 r16 bes_1( g_2 bes g  es'_3) |	%25
  bes4 bes' |
  es,2~_\markup{\finger "3-2"} |
  es |
  <as as,>4^\markup{\finger "1-4"}_( des^2 |		%29
  c^1  g^4) |
  as8[( g f  f')] |
  es4_(^\markup{\finger "2-1"} es,^4 |
  des  des'^\markup{\finger "1-2"}_) |			%33
  c^1( f,^2 |
  bes,  <es-2>) |
  as,8 as' as, r |
  <as' as,>4 r |		%37
  \fingerDown bes8-2~ \unhideTupletNumber
  \times 2/3 {bes16[ \fingerUp <bes-3>( a]} \times 2/3 {bes)[-. <bes-2>-.(  as)-.]}
  \times 2/3 {<g-1>[-.( f-. es)-.]} \hideTupletNumber|
 \fingerDown <as-1>8 r r4 |
 es8_3~ \times 2/3 {  es16[ es_2( d]   es)[-. fes-.(  es)-.]  des[-.( <ces-1>-.  bes)-.] } |
 as8 r r4 |			%41
 \times 2/3 {
  <fis' dis a>16_5[ <fis dis a> <fis dis a>] <fis dis a>[ <fis dis a> <fis dis a>]
    <gis e gis,>[ <gis e gis,> <gis e gis,>] <gis e gis,>[ <gis e gis,> <gis e gis,>] |
  <ais fis e>[ <ais fis e> <ais fis e>] <ais fis e>[ <ais fis e> <ais fis e>]
    <b gis e b>[ <b gis e b> <b gis e b>] b,[ b b] |
 }
 e8 r r4 |
 e  r |			%45
 <fis>8_2~ \times 2/3 {  fis16[ fis^3( eis]   fis)[-. fis-2-.(  e-1)-.]  dis[-.( cis-.  b)-.] } |
 <e-1>8 r r4 |
 \times 2/3 { r16 \fingerUp <f!-5>[-. <as,!-4>-.]  <ces-3>[-. <d-2>-. <f!-1>-.] } <as!-2>8 r |
 \times 2/3 { r16  <f-5>[-. <as,-4>-.]  ces[-. d-. <f-1>-.] } <as-2>8 r |		%49
 \times 2/3 { r16  fes_4[-. as-.] } bes!8-. \times 2/3 { r16  es,_4[-. g-.] } bes8-. |
 <as as,>4^\markup{\finger "1-4"}( des,_2 |
 c_1  g_4) |
  as8[( g f'  f)] |		%53
  es'4(_\markup{\finger "2-1"} es,_4 |
  des  des'_\markup{\finger "1-2"}) |
 \fingerDown <c-1>( <f,-2> |
 bes,  <es-2>) |			%57
 as,8 as' as, r |
 << {
  \times 2/3 {
    \hideTupletBracket
    \hideTupletNumber
    as'16[(  es) es]  as[(  es) es]  g[(  es) es]  g[(  es) es] |
    as[(  es) es]  as[(  es) es]  g[(  es) es]  g[(  es) es] |
    as[(  es) es]  g[(  es) es]  f[(  as,) as]  f'[(  <as,_3>) <as_2>] |%61 (1)
  }
 } \\ {
  \fingerDown
  as4( <des-3\4> |
  <c-4\4> g) |
   as8[( g  f') f] |		% 61 (2)
 } >>
 \times 2/3 {  es16[-. <g-4>-. bes,-.]  <es^1>[-. <g^4>-. bes-.] } <es^1>4 |
 \times 2/3 {  <des,-5>16[-. <g,-3>-. bes-.]  <des^1>[-. <g^3>-. bes-.] } des4^\markup{\finger "1-2"} |
 <c^1>( \allowScriptUnderSlur f,^\markup{\finger "3-1"} |
  <bes,_3>) << { \times 2/3 {
  \hideTupletBracket
  \hideTupletNumber
 bes16[(  es') es]  es,[(  es') es] } } \\ { es,8 es } >> |	%65
  \hideTupletNumber
 \times 2/3 {
 \stemDown as,16_3[ es'_1-.(^\markup{\vspace #-.3 \halign #0.7 \dynamic "pp"}  es_2)-.]
 \stemNeutral es_3[-.( es_2-.  es_1)-.]  es_3[ es_2 es_1]  es[ es es] |
  <es des>[ <es des> <es des>] <es des>[ <es des> <es des>]
    <es des>[ <es des> <es des>] <es des>[ <es des> <es des>] |
  \stemDown <es as,>[_4 es-._1(  es)_2-.] \stemNeutral es[-._3( es-._2  es)-._1]  es_3[ es_2 es_1]  es[ es es] |
  <es des>[^\< <es des> <es des>] <es des>[ <es des> <es des>]_\!
    <es des>[^\> <es des> <es des>] <es des>[ <es des> <es des>]\! |	%69
 }
 <es c>8_4 r <g es>4_1_2( \hideTupletNumber|
 <as as,>8 r) <des es,>4^1_( |
 <c^2 as_3>8) r <des,^1 es>4_( |
 <c^2 as_3>16 r) as_4 r \fingerLeft <as-5>4_\markup{" "}_\fermata \bar "|."	%73
}
