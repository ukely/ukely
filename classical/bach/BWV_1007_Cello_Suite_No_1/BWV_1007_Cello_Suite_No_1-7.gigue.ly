\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-7.gigue.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #10 }
  \header { piece = "Gigue" }
  \midi {\tempo 2 = 60}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \gigue }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \gigue }
        >>
      >>
    >>
  >>
}
