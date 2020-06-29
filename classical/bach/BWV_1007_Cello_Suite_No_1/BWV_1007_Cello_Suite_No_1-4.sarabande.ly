\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "BWV_1007_Cello_Suite_No_1-4.sarabande.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { system-count = #6 }
  \header { piece = "Sarabande" }
  \midi {\tempo 4 = 60}
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \sarabande }
      %  >>
      %>>

      \new TabStaff <<
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \sarabande }
        >>
      >>
    >>
  >>
}
