\version "2.20.0"
\include "O_Come_O_Come_Emmanuel.ily"
\header {
      instrument = "Ukulele"
}

\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 90}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 4/4
        \key e \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \tabFullNotation
        \new TabVoice = "melodyVoice" { \voiceOne \leadmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
        \new Lyrics \lyricsto "melodyVoice" \verseFive
      >>
    >>
  >>
}
