\version "2.20.0"
\include "The_Coventry_Carol-include.ily"
\header {
      instrument = "Ukulele"
}

transposedstaff = \transpose g d \StaffChords
transposedsop = \transpose g d \sopMusic

\storePredefinedDiagram #default-fret-table
                        \chordmode { g:m6 }
                        #ukulele-tuning
                        #"o;2-2;o;1-1;"
\score {
  \layout { }
  \midi {\tempo 4 = 115}
  <<
    \new ChordNames \transposedstaff
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \transposedstaff
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 3/4
        \key g \minor
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \new TabVoice = "melodyVoice" { \voiceOne \transposedsop }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
      >>
    >>
  >>
}
