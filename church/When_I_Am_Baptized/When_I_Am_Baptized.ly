\version "2.20.0"
\include "When_I_Am_Baptized.ily"
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
  \layout { }
  \midi {\tempo 4 = 72}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 2/4
        \key f \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 8
        \new Voice = "melodyVoice" { \voiceOne \leadmelody }
        \new Voice { \voiceTwo \easyalto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \leadmelody }
          \new TabVoice { \voiceTwo \easyalto }
        >>
      >>
    >>
  >>
}
