\version "2.18.2"
\language "english"
\include "../lib/barre.ily"

\header {
    title = "He Sent His Son"
    poet = "Mabel Jones Gabbott, 1910–2004"
    composer = "Michael Finlinson Moody, b. 1941"
    instrument = "Drop-G Ukulele"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1982 by Mabel Jones Gabbott and Michael Finlinson Moody. Arr. © 1989 IRI."
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/he-sent-his-son"
  }

% Fret chords at top of piece
\include "predefined-ukulele-fretboards.ly"
drop-g-ukulele-tuning = \stringTuning <g c' e' a'>

TopChords = {
  \chordmode {
    f c:7 g:m d:m g:7 f:7 bf a:7 d:7 bf:m
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
intro = {
  c'4 c'2 c' (g'4 f' c'2) c' (d'4) \bar "||"
}

melody = {
  \set melismaBusyProperties = #'()
  s2. s s s
  % How could the Fa -- ther tell the world
  r8 c' (c' f' f' a' a'8. g'16 g'2)
  % of love and ten -- der -- ness?_
  r8 c'8 (c' e' e' g') g'4 (f'2)
  % He sent his Son, a new -- born babe,
  r8 a' (a' d'' c'' a' a'8. f'16 f'4.)
  % with peace and ho -- li -- ness._
  d'8 (c'4. a'8 a' f' g'2.)
  % How could the Fa -- ther show the world
  r8 c' (c' f' f' a' a'8. g'16 g'2)
  % the path -- way we should go?_
  r8 e' (e' f' f' g') g'4 (a'2)
  % He sent his Son to walk with men
  r8 bf'8 (bf' a' a' g' c'' a' f'4.
  % on earth, that we may know._
  d'8 c'4.) f'8 (f'8 e'8 f'2.)
  % How could the Fa -- ther tell the world
  r8 f' (f' bf' bf' d'' c''8. a'16 f'4.
  % of sac -- ri -- fice, of death?
  f'8 bf'8 a' g'4.) f'8 e'2
  % He sent his Son to die for us
  r8 e'8 (d'4~ d'8 e' e' g' g'8. a'16 a'4.)
  % and rise with liv -- ing breath.
  d'8 (g'4. g'8 a' bf' c''4.)
  d'8 (f' bf' d'' e'' f''4 g'')
  % What does the Fa -- ther ask of us?
  r8 c' (c' f' f' a' a'8. g'16 g'2)
  % What do the scrip -- tures say?
  r8 e' (e' f' f' g') g'4 (a'4.)
  % Have faith, have hope,
  f'8 (bf' bf' a'4.
  % live like his Son,
  g'8 c''-_ a'-_ f'4.-_\fermata)
  % help oth -- ers on their way.
  d'8 (c' a' a'4. g'8 f'2.~ f'4~ f'8)
  % What does he ask?
  c' c' g' g'2.~ g'8
  % Live like his Son.
  g' f'4 e'4 f'2.~ f'2.\fermata

  \bar "|."
}
alto = {
  a4 a2 bf4 bf2 a4 a2 bf4 bf2
  % How could the Fa -- ther tell the world
  a4 a2 bf2 bf4
  % of love and ten -- der -- ness?_
  bf4 bf2 bf4 (a4) e'\3
  % He sent his Son, a new -- born babe,
  <f' d'>4  <f' d'>2 <f' d' b>4 <d' b> g
  % with peace and ho -- li -- ness._
  a4 a4 d'4 <f'\3 c'\4> (e'\3) <c' bf>
  % How could the Fa -- ther show the world
  a4 a2 <d' bf>2 <d' bf>4
  % the path -- way we should go?_
  <c' bf>4 d' e'\3 ef'2 a4
  % He sent his Son to walk with men
  \fbarre #"I" { <d' bf>4 f' } g' <f' c'> <d' b> g
  % on earth, that we may know._
  bf g <c' bf> <c' bf> a2
  % How could the Fa -- ther tell the world
  \fbarre #"I" { <d' bf>2  <f' d' bf>4 } <f' c' a> d' c'
  % of sac -- ri -- fice, of death?
  <d' g> <c' a> <d' bf> <d' a> cs' a
  % He sent his Son to die for us
  bf2 <bf c'>4 <cs' a> <g' c'> fs'
  % and rise with liv -- ing breath.
  <d' g>8 bf d'4 <f' d' bf> <f' d'>8 g bf
  s4. <a'\2 c'\3>4 <bf'\2 d'\4> bf'\2
  % What does the Fa -- ther ask of us?
  <a'' c''>2 a4 <d' bf>2 <d' bf>4
  % What do the scrip -- tures say?
  bf d' c' <ef' a>2 a4
  % Have faith, have hope,
  <d' bf> d' g
  % live like his Son,
  <f' c' a> <d' b> (g_\fermata)
  % help oth -- ers on their way.
  bf <d' bf> e'\3 <c' a> <c' a>2
  % What does he ask?
  <d' bf>4 <d' bf>2 <df' bf>4 <df' bf> f' <e' df'>\fermata
  % Live like his Son.
  <df' bf>2 <c' a>4 <c' a>2 <c' a>2\fermata

}

StaffChords = \chordmode {
  f2. c:7 f c:7
  f g:m c:7 f d:m g:7 f c:7 f g:m c:7 f:7
  bf f4 g2:7 c2.:7 f
  bf f4 d2:m g2.:m a:7
  bf a4:7 d2:7 g2.:m c1.:7
  f2. g:m c:7 f:7 bf f4 g2:7 c2.:7 f2. bf bf1.:m f
}

verseOne = \lyricmode {
  How could the Fa -- ther tell the world of love and ten -- der -- ness? _
  He sent his Son, a new -- born babe, with peace and ho -- li -- ness.
  How could the Fa -- ther show the world the path -- way we should go? _
  He sent his Son to walk with men on earth, that we may know.
  How could the Fa -- ther tell the world of sac -- ri -- fice, of death?
  He sent _ his Son to die for us and rise with liv -- ing breath.
  _ _ _ _ _ _ _
  What does the Fa -- ther ask of us? What do the scrip -- tures say? _
  Have faith, have hope, live like his Son, help oth -- ers on their way. _ _
  What does he ask? _ Live like his Son.
}

\score {
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 3/4
        \clef treble
        \key f \major
        \new Voice { \intro }
        \new Voice = "melodyVoice" { \voiceOne \melody }
        \new Voice { \voiceTwo \alto }
        \new Lyrics \lyricsto "melodyVoice" \verseOne
      >>

      \new TabStaff <<
        \set TabStaff.stringTunings = #drop-g-ukulele-tuning
        \absolute <<
          \new TabVoice { \intro }
          \new TabVoice { \voiceOne \melody }
          \new TabVoice { \voiceTwo \alto }
        >>
      >>
    >>
  >>
}
