\version "2.20.0"
\include "header.ily"
\include "predefined-ukulele-fretboards.ly"
\include "Movement_2_Adagio_cantabile.ily"

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\header {
      instrument = "Low-G Ukulele"
      piece = "Adagio cantabile"
      subtitle = "2nd Movement"
}


\score {
  \layout { system-count = #16 \omit Voice.StringNumber }
  \header { }
  \midi { }
  <<
    \new StaffGroup <<
      %\new Staff <<
      %  \clef treble
      %  \relative <<
      %    \new Voice { \topmain }
      %    \new Voice { \topsecondary }
      %    \new Voice { \bottom }
      %  >>
      %>>

      \new TabStaff <<
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \key as \major
        \time 2/4
        \tempo 4=30 \hideTempo
        \tabFullNotation
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \relative <<
          \new TabVoice { \topmain }
          \new TabVoice { \topsecondary }
          %\new TabVoice { \bottom }
        >>
      >>
    >>
  >>
}
