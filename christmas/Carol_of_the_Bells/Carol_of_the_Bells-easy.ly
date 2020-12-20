\version "2.20.0"
easyTarget = 1
\include "Carol_of_the_Bells-include.ily"
\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 115}
  <<
    \new StaffGroup <<
      \new Staff <<
        \time 3/4
        \clef treble
        \key g \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \new Voice = "melodyVoice" { \voiceOne \sopMusic }
        \new Voice { \voiceTwo \altoMusic }
        %\new Lyrics \lyricsto "melodyVoice" \verseOne
        %\new Lyrics \lyricsto "melodyVoice" \verseTwo
        %\new Lyrics \lyricsto "melodyVoice" \verseThree
        %\new Lyrics \lyricsto "melodyVoice" \verseFour
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \sopMusic }
          \new TabVoice { \voiceTwo \altoMusic }
        >>
      >>
    >>
  >>
}
