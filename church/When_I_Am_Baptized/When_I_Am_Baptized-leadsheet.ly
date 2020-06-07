\version "2.20.0"
\include "When_I_Am_Baptized.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { }
  \midi {\tempo 4 = 72}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 2/4
        \key f \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 8
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \leadmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}
