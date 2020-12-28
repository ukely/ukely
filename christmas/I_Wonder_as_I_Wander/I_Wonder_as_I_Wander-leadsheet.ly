\version "2.20.0"
\include "I_Wonder_as_I_Wander.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 104}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 3/4
        \key a \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \tabFullNotation
        \new TabVoice = "melodyVoice" { \voiceOne \keepWithTag #'easy \leadmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
      >>
    >>
  >>
}
