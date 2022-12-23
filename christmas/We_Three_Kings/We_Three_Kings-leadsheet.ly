\version "2.20.0"
\include "We_Three_Kings-include.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 8 = 160}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 3/8
        \key e \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \tabFullNotation
        \new TabVoice = "melodyVoice" { \voiceOne \sopMusic }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
      >>
    >>
  >>
}
