\include "template-include.ily"
\header {
      instrument = "Low-G Ukulele"
}

\score {
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
        \partial 4
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice { \voiceOne \leadintro }
        \new TabVoice = "melodyVoice" { \voiceOne \leadmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}
