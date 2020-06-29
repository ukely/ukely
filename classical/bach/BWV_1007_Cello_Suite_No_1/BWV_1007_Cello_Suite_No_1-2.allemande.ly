\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-2.allemande.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #14 }
  \header { piece = "Allemande" }
  \midi {\tempo 4 = 70}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \allemande }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \allemande }
        >>
      >>
    >>
  >>
}
