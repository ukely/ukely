\version "2.20.0"
\include "Be_Still_My_Soul-include.ily"
\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 80}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \tabFullNotation
        \time 4/4
        \key f \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \melody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
      >>
    >>
  >>
}
