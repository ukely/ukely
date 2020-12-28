\version "2.20.0"
\include "The_Wexford_Carol-include.ily"
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
  \midi {\tempo 4 = 120}
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 4/4
        \clef treble
        \key g \major
        \set Staff.midiInstrument = "acoustic guitar (nylon)"
        \new Voice = "melodyVoice" { \voiceOne \sopMusic }
        \new Voice { \voiceTwo \altoMusic }
        \new Voice { \voiceTwo \tenorMusic }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
        % Too many verses doesn't fit, use leadsheet or tab-only
        %\new Lyrics \lyricsto "melodyVoice" \verseFour
        %\new Lyrics \lyricsto "melodyVoice" \verseFive
        %\new Lyrics \lyricsto "melodyVoice" \verseSix
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \sopMusic }
          \new TabVoice { \voiceTwo \altoMusic }
          \new TabVoice { \voiceTwo \tenorMusic }
        >>
      >>
    >>
  >>
}
