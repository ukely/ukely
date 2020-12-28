\version "2.20.0"
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
  \layout { \omit Voice.StringNumber }
  \midi {\tempo 8 = 116}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 6/8
        \clef treble
        \key bf \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \new Voice { \intro }
        \new Voice = "melodyVoice" { \voiceOne \melody }
        \new Voice { \voiceTwo \alto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \intro }
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \alto }
        >>
      >>
    >>
  >>
}
