\version "2.18.2"
\language "english"

\header {
    title = "I Feel My Savior's Love"
    composer = "K. Newell Dayley, b. 1939"
    instrument = "Low-G Ukulele"
    %poet = "Ralph Rodgers Jr., 1936–1996; K. Newell Dayley, b. 1939; and Laurie Huffman, b. 1948"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1978, 1979 by K. Newell Dayley.
This song may be copied for incidental, noncommercial church or home use."
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/i-feel-my-saviors-love"
  }

% Fret chords at top of piece

\include "predefined-ukulele-fretboards.ly"
low-g-ukulele-tuning = \stringTuning <g c' e' a'>

TopChords = {
  \chordmode {
    f a:m d:m g:m7 c:7 f:7 bf g:m g:7
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
  % I feel ...
  c' a' <a' c'> <c'' bf> c'' <f' d' a>2. <f' bf>4
  % all the world ...
  <g' c' bf>4 <a' f' c'> <bf' f' d'> <c'' g' e'>
  % round me...
  a' <c'' a>2 <c' g>4

  % Spirit warms...
  a' <a' c'> <c'' bf> c'' <f' d' a>2. <f' bf>4
  %Everything I see
  <g' c' bf>4 <a' c'> <bf' d'> <d'' f'\3>
  <c''\1 ef'\3>2. \bar "||"

  % He knows I will
  f'4 <d''\1 f'\3>2 <c'' a' e'>4 <bf' g' d'>
  % follow him...
  <a' c'>4. bf'8 <c'' g'\2>2   bf'
  % all my
  <a' d' bf>4 <g' e'>
  % life to him
  <f' d'>4. a'8 g'4\2\fermata

  % I feel my...
  c' a' <a' c'> <c'' bf> c'' <f' d' a>2. <f' bf>4
  % The love he...
  <g' c' bf>4 <a' f' c'> <bf' f' d'> <a' f' c'> <g' c' bf> <f' c' a>2
  \bar "|."
}
alto = {
  % I feel ...
  s4 <f' c'>4 g'8 f'8 d'4 f'8 e'8 f'4 e'8 d' <c' g> a
  % all the world ...
  s4 s1
  % round me...
  c'4 f'8 e'8 d'4

  % Spirit warms...
  s4 <f' c'> g'8 f'8 d'4 f'8 e'8 f'4 e'8 d' <c' g> a s4
  %Everything I see
  s1
  s4 bf'4\2 a'\2 s

  % knows I will
  bf'4\2 (a'\2) s2
  % follow him...
  g'4 (f') e'\3 (g') <f' d'> (e')
  % all my
  s2
  %life to him
  bf4 b <c'\4 e'\3>

  % I feel my...
  s4 <f' c'>4 g'8 f'8 d'4 f'8 e'8 f'4 e'8 d' <c' g> a
  % The love he...
  s1
}

StaffChords = \chordmode {
  s4 f2 a:m d1:m g2:m7 c:7 f2 c:7
     f2 a:m d1:m g2:m7 c:7 f1:7
     bf2 a4:m g:m f2 a:m g:m c:7 g4:m7 g:7 c2
     f2 a:m d1:m g2:m7 c:7 g4:m7 f2
}

verseOne = \lyricmode {
  I feel my Sav -- ior’s love
  In all the world a -- round me.
  His Spir -- it warms my soul
  Through ev -- ’ry -- thing I see.

  He knows I will fol -- low him,
  Give all my life to him.
  I feel my Sav -- ior’s love,
  The love he free -- ly gives me.
}

verseTwo = \lyricmode {
  I feel my Sav -- ior’s love;
  Its gen -- tle -- ness en -- folds me,
  And when I kneel to pray,
  My heart is filled with peace.
}

verseThree = \lyricmode {
  I feel my Sav -- ior’s love
  And know that he will bless me.
  I of -- fer him my heart;
  My shep -- herd he will be.
}

verseFour = \lyricmode {
  I’ll share my Sav -- ior’s love
  By serv -- ing oth -- ers free -- ly.
  In serv -- ing I am blessed.
  In giv -- ing I re -- ceive.
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
        \new Lyrics \lyricsto "melodyVoice" \verseFour
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
