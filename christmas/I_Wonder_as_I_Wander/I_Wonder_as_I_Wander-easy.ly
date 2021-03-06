\version "2.20.0"
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
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 104}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 3/4
        \clef treble
        \key a \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 4
        \new Voice = "melodyVoice" { \voiceOne \keepWithTag #'easy \leadmelody }
        \new Voice { \voiceTwo \easyalto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \keepWithTag #'easy \leadmelody }
          \new TabVoice { \voiceTwo \easyalto }
        >>
      >>
    >>
  >>
}
