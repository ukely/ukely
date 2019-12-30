\version "2.18.2"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "I Wonder as I Wander"
    composer = "John Jacob Niles, 1933"
    arranger = "arr. Jordan Anderson"
    tagline = ""
  }

drop-g-ukulele-tuning = \stringTuning <g c' e' a'>


% Chords

\storePredefinedDiagram #default-fret-table
                        \chordmode { f }
                        #ukulele-tuning
                        #"2-2;o;1-1;3-4;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:m6- }
                        #ukulele-tuning
                        #"2-2;o;1-1;o;"

\storePredefinedDiagram #default-fret-table
                        \chordmode { a:m6 }
                        #ukulele-tuning
                        #"2-2;o;2-3;o;"

TopChords = \chordmode {
  a:m f c d a:m6- a:m6 d:7 f:maj7 g
}

StaffChords = \chordmode {
  s4 a2.:m f c d
  a:m a:m6- a:m6 a:m6-
  a:m a:m6- d:7 c
  a:m a:m6 f:maj7 d2
}

% Main music
leadmelody = {
  % I wonder as I wander out under the sky,
  e'4 a' e' a'8 a' c''4 b' a' g' e' c' d'2
  % How Jesus the Savior did come for to die.
  e'4 a' e' a' c'' b' a' c'' b'4. a'8 a'2
  % For poor on'ry people like you and like I...
  e'4 a' e' a' c'' b' a'
    \tag #'easy { c''4 b' a' g'2 }
    \tag #'full { \fbarre #"II" { c''4 b' a'\2 } g'2 ^\markup{\tiny "B III"} }
  % I wonder as I wander out under the sky.
  \afterGrace e'4 \parenthesize e'8 a'4 e' a'8 a' c''4 e''\fermata a' c'' a' e' d'2
  \bar "|."
}

easyalto = {
  % I wonder as I wander out under the sky,
  s4 c'2. f' e'4\3 s2 a2 s4
  % How Jesus the Savior did come for to die.
  e'2. f' fs' f'
  % For poor on'ry people like you and like I...
  c'2. f' fs' e'2\3 s4
  % I wonder as I wander out under the sky.
  c'2 c'4 e' a'\2 s e'2 g4 a2
}

fullalto = {
  % I wonder as I wander out under the sky,
  s4 <a c' e'>2 <c' e'>4  <a c' f'>2 f'4 <g c'>2 s4 a2
  % How Jesus the Savior did come for to die.
  s4 <a c' e'>2. <a f'> <a fs'> <a f'>2
  % For poor on'ry people like you and like I...
  s4 <a c' e'>2 c'4 <a f'>2. <a d' fs'>  <c'\4 e'\3>2
  % I wonder as I wander out under the sky.
  s4 <a c' e'>2 <c' e'>4 fs' <f' a'\2> s <e' a'>2 <g c'>4 a2
}

verseOne = \lyricmode {
  I won -- der as I wan -- der out un -- der the sky,
  How Je -- sus the Sav -- ior did come for to die.
  For poor on -- 'ry peo -- ple like you and like I...
  I won -- der as I wan -- der out un -- der the sky.
}

verseTwo = \lyricmode {
  When Ma -- ry birth -- ed Je -- sus 'twas in a cow's stall,
  With wise men and far -- mers and shep -- herds and all.
  But high from God's heav -- en a star's light did fall,
  And_the pro -- mise of _ a -- ges it then did re -- call.
}

verseThree = \lyricmode {
  If Je -- sus had _ want -- ed for a -- ny wee thing,
  A star in the sky, or a bird on the wing,
  Or all of God's an -- gels in heav'n for to sing,
  He sure -- ly could _ have it, 'cause he was the King.
}