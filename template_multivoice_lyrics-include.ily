\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "Title of Tune"
    composer = "comp"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1980 by person"
    tagline = "https://website.link"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { d:7 }
                        #ukulele-tuning
                        #"2-2;o;2-3;o;" %fret-finger low;c;e;high

% Chords

TopChords = \chordmode {
  bf bf:7 ef ef:m c c:7 f f:7 c:m d:7 g:m d:m c:m7
}

StaffChords = \chordmode {
  bf4. bf:7 ef ef:m bf ef c:7 f
  bf f ef ef:m bf ef f2.:7
}

% Main music
leadintro = {
  \stemUp d''4 d''16 d'' d''8 c'' bf'
  \tieUp c'4.~ c'4
}

leadmelody = {
  s2. s2. s2. s2 s8
  c'8 \repeat volta 2
  { d'8. ef'16 f'8 f'4 c''8 bf'4. ef'4
    ef'8 d' bf'8. d'16 ef'8 c'' a' }
  \alternative {
    {bf'4.~ bf'4 c'8}
    {bf'2.}
  }
  \bar "|."
}

easyalto = {
  f'4.\3 af'\2 g'\2 c'4.
  bf d' bf a4
}

intro = {
  \stemUp \fbarre #"III"{d''4 d''16 d'' d''8 c'' bf'\2}
  \tieUp c'4.~ c'4
  }

melody = {
  s2. s2. s2. s2 s8
  c'8 \repeat volta 2
  { d'8. ef'16 f'8 f'4 c''8 bf'4. ef'4
    c''8 \fbarre #"III"{d''8. d''16 d''8 d'' c'' bf'\2} bf' a' g' f'4
    ef'8 d' bf'8. d'16 ef'8 c'' a' }
    \alternative {
      {bf'4.~ bf'4 c'8}
      {bf'2.}
    }
  \bar "|."
}

alto = {
  bf8 f'4\3 <af' bf>4. <g' bf>4. c'4.
  bf8 bf4 d'8 c' g bf4 g8 a4
  bf4. g4 ef'8 <ef' bf>4 c'8 <d' bf>4 s8
  %second ending
  <ef' bf>4 c'8 <d' bf>4
}

verseOne = \lyricmode {
   I’m writ -- ing a lot of ly -- rics;
}

verseTwo = \lyricmode {
  And now I am on verse two
}
