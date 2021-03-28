\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-3.courante.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #24 }
  \header { piece = "Courante" }
  \midi   { \tempo 2. = 70 }
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \courante }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \time 3/4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \courante }
        >>
      >>
    >>
  >>
}
