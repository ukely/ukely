\version "2.20.0"
\include "Still_Still_Still-include.ily"
\header {
      instrument = "Ukulele"
}

transposedstaff = \transpose ef d
\StaffChords
transposedsop = \transpose ef d \sopMusic

\storePredefinedDiagram #default-fret-table
                        \chordmode { e:m }
                        #ukulele-tuning
                        #"o;4-3;3-2;2-1;"
\score {
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 4 = 115}
  <<
    \new ChordNames \transposedstaff
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \transposedstaff
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 4/4
        \key ef \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \tabFullNotation
        \new TabVoice = "melodyVoice" { \voiceOne \transposedsop }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        \new Lyrics \lyricsto "melodyVoice" \verseFour
      >>
    >>
  >>
}
