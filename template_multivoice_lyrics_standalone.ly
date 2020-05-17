\version "2.18.2"
\language "english"
\include "../lib/barre.ily"

\header {
    title = "title here"
    composer = "comp"
    instrument = "Low-G Ukulele"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1978 by dude.
This song may be copied for incidental, noncommercial stuff."
    tagline = "reference link"
  }

% Fret chords at top of piece

\include "predefined-ukulele-fretboards.ly"
low-g-ukulele-tuning = \stringTuning <g c' e' a'>

% to change a chord shape
%\storePredefinedDiagram #default-fret-table
%                        \chordmode { a:m7 }
%                        #ukulele-tuning
%                        #"2-2;o;3-3;3-4;"

TopChords = {
  \chordmode {
    f a:m d:m g:m7 c:7 f:7 bf a:m g:m g:7
  }
}

\score{
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


% Main music

melody = {
  % main absolute melody line
  c' a' <a' c'> ...

  \bar "|."
}
alto = {
  % secondary line (s to skip time)
  s4 <f' c'>4
}

StaffChords = \chordmode {
  s4 f2 a:m d1:m g2:m7 .
}

verseOne = \lyricmode {
  words to v -- erse one
  ...

  chorus ...
}

verseTwo = \lyricmode {
  words to v -- erse two
  ...

}

verseThree = \lyricmode {
  words to v -- erse three
  ...

}

\score {
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 4/4
        \clef treble
        \key f \major
        \partial 4
        \new Voice = "melodyVoice" { \voiceOne \melody }
        \new Voice { \voiceTwo \alto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
        \new Lyrics \lyricsto "melodyVoice" \verseTwo
        \new Lyrics \lyricsto "melodyVoice" \verseThree
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #low-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \alto }
        >>
      >>
    >>
  >>
}
