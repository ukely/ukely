\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-5.menuet_i.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #6 }
  \header { piece = "Menuet 1" }
  \midi {\tempo 2 = 60}
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
