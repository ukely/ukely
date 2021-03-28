\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-1.prelude.ily"
\include "BWV_1009_Cello_Suite_No_3-2.allemande.ily"
\include "BWV_1009_Cello_Suite_No_3-3.courante.ily"
\include "BWV_1009_Cello_Suite_No_3-4.sarabande.ily"
\include "BWV_1009_Cello_Suite_No_3-5.bourree_i.ily"
\include "BWV_1009_Cello_Suite_No_3-6.bourree_ii.ily"
\include "BWV_1009_Cello_Suite_No_3-7.gigue.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\paper {
	ragged-last-bottom = ##f
	%ragged-bottom = ##t
}

\book {

  \pageBreak
  \score {
    \layout {  }
    \header { piece = "Prélude" }
    \midi   { \tempo 4 = 100 }
    \new TabStaff <<
      \tabFullNotation
      \time 3/4
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \prelude }
    >>
  }

  \pageBreak

  \score {
    \layout { system-count = #18 }
    \header { piece = "Allemande" }
    \midi   { \tempo 4 = 60 }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \allemande }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #16 }
    \header { piece = "Courante" }
    \midi   { \tempo 2. = 70 }
    \new TabStaff <<
      \tabFullNotation
      \time 3/4
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \courante }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #7 }
    \header { piece = "Sarabande" }
    \midi   { \tempo 4 = 55 }
    \new TabStaff <<
      \tabFullNotation
      \time 3/4
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \sarabande }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #7 }
    \header { piece = "Bourrée I" }
    \midi   { \tempo 4=150 }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \bourreei }
    >>
  }

  \score {
    \layout { system-count = #7 }
    \header { piece = "Bourrée II" }
    \midi   { \tempo 4=150 }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \bourreeii }
    >>
  }
  \pageBreak

  \score {
    \layout {  }
    \header { piece = "Gigue" }
    \midi   { \tempo 4.=65 }
    \new TabStaff <<
      \tabFullNotation
      \time 3/8
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \new TabVoice { \gigue }
    >>
  }

}
