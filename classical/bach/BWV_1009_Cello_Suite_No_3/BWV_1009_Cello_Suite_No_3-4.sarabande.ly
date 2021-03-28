\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-4.sarabande.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #10 }
  \header { piece = "Sarabande" }
  \midi {\tempo 4 = 55}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \sarabande }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \time 3/4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \sarabande }
        >>
      >>
    >>
  >>
}
