\version "2.18.2"
\language "english"
\include "When_He_Comes_Again.ily"
\header {
      instrument = "Ukulele"
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
        \time 4/4
        \key f \major
        \partial 4
        \set TabStaff.stringTunings = #drop-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \melody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}
