\include "I_Wonder_as_I_Wander.ily"
\header {
      instrument = "Low-G Ukulele"
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
        \time 3/4
        \clef treble
        \key a \minor
        \partial 4
        \new Voice = "melodyVoice" { \voiceOne \keepWithTag #'full \leadmelody }
        \new Voice { \voiceTwo \fullalto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \keepWithTag #'full \leadmelody }
          \new TabVoice { \voiceTwo \fullalto }
        >>
      >>
    >>
  >>
}
