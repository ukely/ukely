\version "2.20.0"
\include "The_Wexford_Carol-include.ily"
\header {
      instrument = "Ukulele"
}

\score {
  <<
    \new ChordNames {
      \TopChords
    }
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \TopChords
    }
  >>
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 120}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<

      \new TabStaff <<
        \time 4/4
        \key g \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \tabFullNotation
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
