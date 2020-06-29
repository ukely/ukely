\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-1.prelude.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #20 }
  \header { piece = "Prélude" }
  \midi {\tempo 4 = 80}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \prelude }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \prelude }
        >>
      >>
    >>
  >>
}
