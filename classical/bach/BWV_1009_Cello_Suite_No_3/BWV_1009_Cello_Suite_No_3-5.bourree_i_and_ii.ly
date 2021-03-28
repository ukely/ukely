\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1009_Cello_Suite_No_3-5.bourree_i.ily"
\include "BWV_1009_Cello_Suite_No_3-6.bourree_ii.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #6 }
  \header { piece = "Bourrée 1" }
  \midi   { \tempo 4 = 150 }
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  <<
      %    \new Voice { \bourree }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        <<
          \new TabVoice { \bourreei }
        >>
      >>
    >>
  >>
}

\score {
  \layout { system-count = #5 }
  \header { piece = "Bourrée 2" }
  \midi   { \tempo 4 = 150 }
  \new TabStaff <<
    \tabFullNotation
    \set TabStaff.stringTunings = #low-g-ukulele-tuning
    \relative \new TabVoice { \bourreeii }
  >>
}
