\version "2.18.2"
\language "english"
\include "../lib/barre.ly"

\header {
    title = "When He Comes Again"
    composer = "Mirla Greenwood Thayne, 1907–1997"
    instrument = "Drop-G Ukulele"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1952 by Mirla Greenwood Thayne, Provo, Utah. Renewed 1980.
This song may be copied for church or home use."
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/when-he-comes-again"
  }

% Fret chords at top of piece

\include "predefined-ukulele-fretboards.ly"
drop-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:m7 }
                        #ukulele-tuning
                        #"2-2;o;3-3;3-4;"

TopChords = {
  \chordmode {
    f a:m7 g:m c:7 c bf g:7
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
  % I wonder, when he comes again,
  c'4 <a' f'>4. <g' e'>8 <g' e'>4 <f' d'> <f' d'>4. d'8 <e' c'>4.
  % Will herald angels sing?
  d'8 <bf' d'>4 d' <e' c'> <d' bf> <c' a>2.
  % Will earth be white with drifted snow,
  c'4 <a' f'>4. <g' e'>8 <g' e'>4 <f' d'> <f' d'>4. d'8 <e' c'>4.
  % Or will the world know spring?
  d'8 e'4 d' c' g' <f' c' a>2.
  % I wonder if one star will shine
  <f' c' a>4
  \fbarre #"I" { <d' bf> <f' d' bf> <bf' f' d'> }
  <d'' bf' e'> d''4. ^\markup{\tiny "1/2 B V"} c''8 <c'' a' f'>4
  % Far brighter than the rest;
  <a' f' c'>4 \fbarre #"III" { c''4. g'8 g'4 c'' } c''2.
  % Will daylight stay the whole night through?
  <f'>4
  \fbarre #"I" { <d' bf> <f' d' bf> <bf' f' d'> }
  <d'' bf' e'> d''4. ^\markup{\tiny "1/2 B V"} c''8 <c'' a' f'>4.
  % Will songbirds leave their nests?
  <a' f'>8 \fbarre #"III" { <g' e' c'>4 <c'' g' e'> }
  \fbarre #"V" { <b'\2 f'\3> <d'' b' f'> }
  <c'' g' e'>2.\fermata ^\markup{\tiny "B III"}
  % I’m sure he’ll call his little ones
  c'4 <a' f'>4. <g' e'>8 <g' e'>4 <f' d'> <f' d'>4. d'8 <e' c'>4.
  % Together ’round his knee,
  d'8 <bf' d'>4 d' <e' c'> <d' bf> <c' a>2.
  % Because he said in days gone by,
  c'4 f' a' <c'' a' f'> <cs'' a' ef'> <d'' bf' f'> <d'' bf' f'> <d' bf>\fermata
  % "Suffer them to come to me."
  d'8 ds' e'4 g' <c'' g' e'> ^\markup{\tiny "B III"} e' <f' c' a>2.
  \bar "|."
}
alto = {
  % I wonder, when he comes again,
  s4 c'2 a bf bf
  % Will herald angels sing?
  g2 s2 s1
  % Will earth be white with drifted snow,
  c'2 a bf bf
  % Or will the world know spring?
  bf bf s1
  % I wonder if one star will shine
  s1 <a'\2 f'\3>2 s2
  % Far brighter than the rest;
  <g' e'>2 <e'\3 c'\4>2 f'4 g' a'\2
  % Will daylight stay the whole night through?
  s4 s1 <a'\2 f'\3>2 s2
  % Will songbirds leave their nests?
  s1 s1
  % I’m sure he’ll call his little ones
  c'2 a bf bf
  % Together ’round his knee,
  g2 g2 s1
  % Because he said in days gone by,
  c'2 s2 s1
  % "Suffer them to come to me."
  bf2 c'4\4 c'8 bf
}

StaffChords = \chordmode {
  s4 f2 a:m7 g:m c:7 g:m c f1
  f2 a:m7 g:m c:7 g:m c f1
  bf f c2 c:7 f1 bf f c2 g:7 c c:7
  f2 a:m7 g:m c:7 g:m c f1
  f2 a:m7 bf g:m c:7 c4 c:7 f2.
}

verseOne = \lyricmode {
  I won -- der, when he comes a -- gain,
  Will her -- ald an -- gels sing?
  Will earth be white with drift -- ed snow,
  Or will the world know spring?
  I won -- der if one star will shine
  Far bright -- er than the rest;
  Will day -- light stay the whole night through?
  Will song -- birds leave their nests?
  I’m sure he’ll call his lit -- tle ones
  To -- geth -- er ’round his knee,
  Be -- cause he said in days gone by,
  “Suf -- fer them to come to me.”
}

verseTwo = \lyricmode {
  I won -- der, when he comes a -- gain,
  Will I be read -- y there
  To look up -- on his lov -- ing face
  And join with him in prayer?
  Each day I’ll try to do his will
  And let my light so shine
  That oth -- ers see -- ing me may seek
  For great -- er light di -- vine.
  Then, when that bless -- ed day is here,
  He’ll love me and he’ll say,
  “You’ve served me well, my lit -- tle child;
  Come un -- to my arms to stay.”
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
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #drop-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \alto }
        >>
      >>
    >>
  >>
}
