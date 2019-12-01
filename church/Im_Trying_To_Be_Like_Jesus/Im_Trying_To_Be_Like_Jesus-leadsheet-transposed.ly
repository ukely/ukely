\include "Im_Trying_To_Be_Like_Jesus.ily"
\header {
      instrument = "Ukulele"
}

% The lowest note in the original is outside normal uke range, so transpose up
transposedstaff = \transpose bf c' \StaffChords
transposedintro = \transpose bf c' \leadintro
transposedmelody = \transpose bf c' \leadmelody

\score {
  <<
    \new ChordNames \transposedstaff
    \new FretBoards {
      \set Staff.stringTunings = #ukulele-tuning
      \transposedstaff
    }
    \new StaffGroup <<

      \new TabStaff <<
        \time 6/8
        \key bf \major
        \set TabStaff.stringTunings = #ukulele-tuning
        \new TabVoice { \voiceOne \transposedintro }
        \new TabVoice = "melodyVoice" { \voiceOne \transposedmelody }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
      >>
    >>
  >>
}