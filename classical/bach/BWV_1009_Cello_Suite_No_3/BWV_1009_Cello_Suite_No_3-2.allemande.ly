\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-2.allemande.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #21 }
  \header { piece = "Allemande" }
  \midi {\tempo 4 = 60}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \allemande }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \allemande }
        >>
      >>
    >>
  >>
}
