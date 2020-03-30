\version "2.18.2"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "When I Am Baptized"
    composer = "Nita Dale Milner, 1952–2004"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1989 IRI"
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/when-i-am-baptized"
  }

drop-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { d:7 }
                        #ukulele-tuning
                        #"2-2;o;2-3;o;"

% Chords

TopChords = \chordmode {
  f a:m bf c:7 c g:m
}

StaffChords = \chordmode {
  s8 f2 a:m bf c:7
  f a:m bf c:7
  f a:m bf c
  f bf g4:m c:7 f4.
}

% Main music
leadmelody = {
  c'8 c' f' f' a' a' c''4 c''8 c'' bf' bf' a' g'4.
  c'8 c' f' f' a' a' c'' c'' c'' c'' bf' bf' a' g'4.
  c''8 c'' f' f' c'' c'' f' f' c'' c'' bf' bf' a' g'4.
  c''8 c'' f' f' c'' d'' f'\3 f'\3\fermata f' bf' a' g'8. f'16 f'4.
  \bar "|."
}

easyalto = {
  s8 a2 e' d' f'4\3 (e'8\3)
  s8 bf4 a c' e' d'2 f'4\3 (e'8\3)
  s8 d'4 c' a2 bf4 d' f'4\3 (e'8\3)
  s8 a2 bf4. a8 g4 c'4 <a c'>4.
}


alto = {
  bf8 f'4\3 <af' bf>4. <g' bf>4. c'4.
  bf8 bf4 d'8 c' g bf4 g8 a4
  bf4. g4 ef'8 <ef' bf>4 c'8 <d' bf>4 s8
  %second ending
  <ef' bf>4 c'8 <d' bf>4
}

verseOne = \lyricmode {
   I like to look for rain -- bows when -- ev -- er there is rain
   And pon -- der on the beau -- ty of an earth made clean a -- gain.

   I want my life to be as clean as earth right af -- ter rain.
   I want to be the best I can and live with God a -- gain.
}

verseTwo = \lyricmode {
  I know when I am bap -- tized my wrongs are washed a -- way,
  And I can be for -- giv -- en and im -- prove my -- self each day.
}
