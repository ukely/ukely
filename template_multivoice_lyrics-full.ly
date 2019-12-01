\include "template-include.ily"
\header {
      instrument = "Drop-G Ukulele"
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
        \time 6/8
        \clef treble
        \key bf \major
        \new Voice { \intro }
        \new Voice = "melodyVoice" { \voiceOne \melody }
        \new Voice { \voiceTwo \alto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #drop-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \intro }
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \alto }
        >>
      >>
    >>
  >>
}