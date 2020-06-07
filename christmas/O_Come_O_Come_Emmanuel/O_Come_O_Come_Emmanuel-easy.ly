\version "2.20.0"
\include "O_Come_O_Come_Emmanuel.ily"
\header {
      instrument = "Low-G Ukulele"
}

#(set-global-staff-size 19.6)

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
  \midi {\tempo 4 = 90}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 4/4
        \clef treble
        \key e \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \partial 4
        \new Voice = "melodyVoice" { \voiceOne \leadmelody }
        \new Voice { \voiceTwo \easyalto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
        \new Lyrics \lyricsto "melodyVoice" \verseFive
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
