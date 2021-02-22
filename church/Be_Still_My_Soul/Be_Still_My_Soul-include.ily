\version "2.20.0"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "Be Still, My Soul"
    composer = "Jean Sibelius, 1865–1957"
    lyrics = "Katharina von Schlegel, b. 1697"
    instrument = "Low-G Ukulele"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1900 by Breitkopf and Härtel"
    tagline = "https://www.churchofjesuschrist.org/music/library/hymns/be-still-my-soul"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { d:7 }
                        #ukulele-tuning
                        #"2-2;o;2-3;o;"

% Chords

TopChords = \chordmode {
  f c:7 d:m d:m7 g:m a
}

StaffChords = \chordmode {
  f1 c1*2:7 f c:7 f1
  f1 d:m d:m7 g1*2:m f1 c:7 a1
  f1 d:m d:m7 g1*2:m f1 c:7 f
}

% Main music
melody = \transpose f f' {
  % Be still, my soul: The Lord is on thy side;
  s4 a4 g a | bf2. a4 | g a f4. g8 | g4 ( a2.~ | a4 ) %1-4
  % With patience bear thy cross of grief or pain.
  a4 g a | bf2. a4 | g a f4. g8 | a1~ | a4 %5-8
  % Leave to thy God to order and provide;
  c'4 c' c' | d'2. a4 | a c' c'4. g8 | g4 ( bf2.~ | bf4 ) % 9-12
  % In ev’ry change he faithful will remain.
  bf4 a g | a2. f4 | f g g4. a8 | a1~ | a4 %13-16
  % Be still, my soul: Thy best, thy heav’nly Friend
  c'4 c' c' | d'2. a4 | a c' c'4. g8 | g4 ( bf2.~ | bf4 ) % 17-20
  % Thru thorny ways leads to a joyful end.
  bf4 a g | a2. f4 | f g g4. f8 | f1 % 21-24
  \bar "|."
}

alto = \transpose f f' {
  % Be still, my soul: The Lord is on thy side;
  r4 f4 e\3 f | e2. f4 | e\3 f d4. e8\3 | e4\3  c2.~ | c4  %1-4
  % With patience bear thy cross of grief or pain.
  f4 e\3 f | e2. f4 | e\3 f d4. e8\3 | f1~ | f4  %5-8
  % Leave to thy God to order and provide;
  f4 f f | f2. f4 | f f f4. e8\3 | e4\3  g2.~ | g4  %9-12
  % In ev’ry change he faithful will remain.
  g4 fs d | c2. c4 | c f\3 e4.\3 e8 | e1~ | e4 %13-16
  % Be still, my soul: Thy best, thy heav’nly Friend
  a4\2 f f | f2. f4 |f f f4. e8\3 | e4\3  g2.~ | g4  %17-20
  % Thru thorny ways leads to a joyful end.
  g4 fs d | c2. c4 | c f\3 e4.\3 a,8 | a,1 %21-24
}

tenor = \transpose f f' {
  % Be still, my soul: The Lord is on thy side;
  s4 c4 c\4 c | c2. c4 | bf, a, bf,4. bf,8 | c4\4  a,2.~ | a,4  %1-4
  % With patience bear thy cross of grief or pain.
  c4 c\4 c | c2. c4 | bf,4 a, bf,4. bf,8 | c1~ | c4  %5-8
  % Leave to thy God to order and provide;
  a,4 a, a, | d2. d4 | d a, a,4. c8\4 | c4\4  g,2.~ | g,4  %9-12
  % In ev’ry change he faithful will remain.
  g,4 a, bf, | f2. a,4 | bf, bf, bf,4.\3 cs8 | cs1~ | cs4 %13-16
  % Be still, my soul: Thy best, thy heav’nly Friend
  c4 a, a, | d2. d4 |d a, a,4. c8\4 | c4\4  g,2.~ | g,4  %17-20
  % Thru thorny ways leads to a joyful end.
  g,4 a, bf, | f2. a,4 | a, bf, bf,4. c8 | c1 %21-24
}

verseOne = \lyricmode {
\set stanza = #"1. "
    Be still, my soul: The Lord is on thy side;
With pa -- tience bear thy cross of grief or pain.
Leave to thy God to or -- der and pro -- vide;
In ev -- ’ry change he faith -- ful will re -- main.
Be still, my soul: Thy best, thy heav’n -- ly Friend
Thru thorn -- y ways leads to a joy -- ful end.
}

verseTwo = \lyricmode {
\set stanza = #"2. "
  Be still, my soul: Thy God doth un -- der -- take
To guide the fu -- ture as he has the past.
Thy hope, thy con -- fi -- dence let noth -- ing shake;
All now mys -- te -- rious shall be bright at last.
Be still, my soul: The waves and winds still know
His voice who ruled them while he dwelt be -- low.
}

verseThree = \lyricmode {
\set stanza = #"3. "
  Be still, my soul: The hour is has -- t’ning on
When we shall be for -- ev -- er with the Lord,
When dis -- ap -- point -- ment, grief, and fear are gone,
Sor -- row for -- got, love’s pur -- est joys re -- stored.
Be still, my soul: When change and tears are past,
All safe and bless -- ed we shall meet at last.
}
