\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-1.prelude.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #22 }
  \header { piece = "Prélude" }
  \midi   { \tempo 4 = 100 }
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \prelude }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \time 3/4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \prelude }
        >>
      >>
    >>
  >>
}
