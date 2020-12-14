\version "2.20.0"
\include "The_Wexford_Carol-include.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { }
  \midi {\tempo 4 = 120}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 4/4
        \key g \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \sopMusic }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
        \new Lyrics \lyricsto "melodyVoice" \verseFive
        \new Lyrics \lyricsto "melodyVoice" \verseSix
      >>
    >>
  >>
}
