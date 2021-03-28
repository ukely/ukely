\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-7.gigue.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #10 }
  \header { piece = "Gigue" }
  \midi   { \tempo 4.=65 }
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \gigue }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \time 3/8
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \gigue }
        >>
      >>
    >>
  >>
}
