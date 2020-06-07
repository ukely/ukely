\version "2.20.0"
\include "Im_Trying_To_Be_Like_Jesus.ily"
\header {
      instrument = "Low-G Ukulele"
}

\score {
  \layout { }
  \midi {\tempo 8 = 116}
  <<
    \new ChordNames \StaffChords
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \StaffChords
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 6/8
        \key bf \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice { \voiceOne \leadintro }
        \new TabVoice = "melodyVoice" { \voiceOne \leadmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}
