\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1008_Cello_Suite_No_2-1.prelude.ily"
\include "BWV_1008_Cello_Suite_No_2-2.allemande.ily"
\include "BWV_1008_Cello_Suite_No_2-3.courante.ily"
\include "BWV_1008_Cello_Suite_No_2-4.sarabande.ily"
\include "BWV_1008_Cello_Suite_No_2-5.menuet_i.ily"
\include "BWV_1008_Cello_Suite_No_2-6.menuet_ii.ily"
\include "BWV_1008_Cello_Suite_No_2-7.gigue.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\book {

  \score {
    \layout {  }
    \header { piece = "Prélude" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \prelude }
    >>
  }

  \pageBreak

  \score {
    \layout { system-count = #10 }
    \header { piece = "Allemande" }
    \new TabStaff <<
      \time 2/2
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \allemande }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #16 }
    \header { piece = "Courante" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \courante }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #7 }
    \header { piece = "Sarabande" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \sarabande }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #5 }
    \header { piece = "Menuet 1" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \menuetI }
    >>
  }

  \score {
    \layout { system-count = #4 }
    \header { piece = "Menuet 2" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \menuetII }
    >>
  }
  \pageBreak

  \score {
    \layout {  }
    \header { piece = "Gigue" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \gigue }
    >>
  }

}
