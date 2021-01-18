\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1008_Cello_Suite_No_2-5.menuet_i.ily"
\include "BWV_1008_Cello_Suite_No_2-6.menuet_ii.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #5 }
  \header { piece = "Menuet 1" }
  \midi {\tempo 4 = 140}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \menuetI }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \menuetI }
        >>
      >>
    >>
  >>
}

\score {
  \layout { system-count = #5 }
  \header { piece = "Menuet 2" }
  \new TabStaff <<
    \tabFullNotation
    \set TabStaff.stringTunings = #low-g-ukulele-tuning
    \relative \new TabVoice { \menuetII }
  >>
}
