\version "2.20.0"
\language "english"
\include "When_He_Comes_Again.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 108}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 4/4
        \key f \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \melody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}
