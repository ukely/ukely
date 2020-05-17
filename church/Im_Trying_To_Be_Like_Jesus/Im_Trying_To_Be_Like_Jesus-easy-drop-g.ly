\include "Im_Trying_To_Be_Like_Jesus.ily"
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
        \time 6/8
        \clef treble
        \key bf \major
        \new Voice { \leadintro }
        \new Voice = "melodyVoice" { \voiceOne \leadmelody }
        \new Voice { \voiceTwo \easyalto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \leadintro }
          \new TabVoice { \voiceOne \leadmelody }
          \new TabVoice { \voiceTwo \easyalto }
        >>
      >>
    >>
  >>
}
