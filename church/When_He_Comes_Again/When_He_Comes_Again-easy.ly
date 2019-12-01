\version "2.18.2"
\language "english"
\include "When_He_Comes_Again.ily"
\header {
      instrument = "Easy Ukulele"
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
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 4/4
        \clef treble
        \key f \major
        \partial 4
        \new Voice = "melodyVoice" { \voiceOne \melody }
        \new Voice { \voiceTwo \simplealto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #drop-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \simplealto }
        >>
      >>
    >>
  >>
}
