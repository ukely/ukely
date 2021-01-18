\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-1.prelude.ily"
\include "BWV_1007_Cello_Suite_No_1-2.allemande.ily"
\include "BWV_1007_Cello_Suite_No_1-3.courante.ily"
\include "BWV_1007_Cello_Suite_No_1-4.sarabande.ily"
\include "BWV_1007_Cello_Suite_No_1-5.menuet_i.ily"
\include "BWV_1007_Cello_Suite_No_1-6.menuet_ii.ily"
\include "BWV_1007_Cello_Suite_No_1-7.gigue.ily"

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
    \layout {  }
    \header { piece = "Courante" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \courante }
    >>
  }
  \pageBreak

  \score {
    \layout {  }
    \header { piece = "Sarabande" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \sarabande }
    >>
  }

  \score {
    \layout { system-count = #5 }
    \header { piece = "Menuet 1" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \menuetI }
    >>
  }
  \pageBreak

  \score {
    \layout { system-count = #4 }
    \header { piece = "Menuet 2" }
    \new TabStaff <<
      \tabFullNotation
      \set TabStaff.stringTunings = #low-g-ukulele-tuning
      \relative \new TabVoice { \menuetII }
    >>
  }

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
