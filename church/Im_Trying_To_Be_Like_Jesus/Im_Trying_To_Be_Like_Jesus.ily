\version "2.18.2"
\language "english"
\include "../../lib/barre.ily"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "I’m Trying to Be like Jesus"
    composer = "Janice Kapp Perry, b. 1938"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1980 by Janice Kapp Perry.
This song may be copied for incidental, noncommercial church or home use."
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/im-trying-to-be-like-jesus"
  }

low-g-ukulele-tuning = \stringTuning <g c' e' a'>

\storePredefinedDiagram #default-fret-table
                        \chordmode { d:7 }
                        #ukulele-tuning
                        #"2-2;o;2-3;o;"
\storePredefinedDiagram #default-fret-table
                        \chordmode { ef }
                        #ukulele-tuning
                        #"3-3;3-3;3-3;1-1;"
\storePredefinedDiagram #default-fret-table
                        \chordmode { d:m }
                        #ukulele-tuning
                        #"2-2;2-3;1-1;o;"
% Chords

TopChords = \chordmode {
  bf bf:7 ef ef:m c c:7 f f:7 c:m d:7 g:m d:m c:m7
}

StaffChords = \chordmode {
  bf4. bf:7 ef ef:m bf ef c:7 f
  bf f ef ef:m bf ef f2.:7
  bf4. bf:7 ef c:m bf ef d2.:7
  g4.:m d:m ef d:m ef d:m c:m7 f:7
  bf bf:7 ef bf ef bf c:7 f:7
  bf bf:7 ef ef:m bf f:7 ef bf
  %second ending
  ef bf
}

% Main music
leadintro = {
  \stemUp d''4 d''16 d'' d''8 c'' bf'
  bf' a' g' f'4 ef'8
  d'8. ef'16 f'8 g'4 ef'8
  \tieUp c'4.~ c'4
}

leadmelody = {
  s2. s2. s2. s2 s8
  %I’m trying to be like Jesus;
  c'8 \repeat volta 2
  { d'8. ef'16 f'8 f'4 c''8 bf'4. ef'4
    %I’m following in his ways.
    ef'8 d'8. ef'16 f'8 g'4 ef'8 c'4.~ c'4
    %I’m trying to love as he did, in all that I do and say.
    c'8 d'8. ef'16 f'8 f'4 bf8 bf'4. ef'4 ef'8 d'8. ef'16 f'8 g'4 g'8 a'4.~ a'4
    %At times I am tempted to make a wrong choice,
    a'8 bf'4 bf'16 bf' a'8 f' d' g'8. f'16 ef'8 f'4
    %But I try to listen as the still small voice whispers,
    f'16 f' g'4 g'8 a'8 f' f'16 f'16 g'8 ( a' ) bf' c'' bf' c'' \bar "||"
    %“Love one another as Jesus loves you.
    d''4 d''16 d'' d''8 c'' bf' bf' ef' g' f'4.
    %Try to show kindness in all that you do.
    g'8. a'16 bf'8 f' bf' bf' bf'8. c''16 d''8 c''4
    %Be gentle and loving in deed and in thought,
    c''8 d''8. d''16 d''8 d'' c'' bf' bf' a' g' f'4
    %For these are the things Jesus taught.”
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
  %I’m trying to be like Jesus; I’m following in his ways.
  s8 bf4. a g bf bf d' bf a4
  %I’m trying to love as he did, in all that I do and say.
  s8 bf4. af g c'\4 bf d'4 bf8 c'4.~ c'4
  %At times I am tempted to make a wrong choice,
  s8 g'4. f' d' c'4
  %But I try to listen as the still small voice whispers,
  s8 ef'4. d' ef' f'
  %“Love one another as Jesus loves you.
  f'4.\3 af' g' d'4.
  %Try to show kindness in all that you do.
  ef'4. d' e' ef'4
  %Be gentle and loving in deed and in thought,
  s8 f'4.\3 af' g' c'4.
  %For these are the things Jesus taught.”
  bf4. g4 ef'8 ef'4. d'4 s8
  %second ending
  ef'4. d'
}

intro = {
  \stemUp \fbarre #"III"{d''4 d''16 d'' d''8 c'' bf'\2}
  bf' a' g' f'4 ef'8
  d'8. ef'16 f'8 g'4 ef'8
  \tieUp c'4.~ c'4
  }

melody = {
  s2. s2. s2. s2 s8
  %I’m trying to be like Jesus;
  c'8 \repeat volta 2
  { d'8. ef'16 f'8 f'4 c''8 bf'4. ef'4
    %I’m following in his ways.
    ef'8 d'8. ef'16 f'8 g'4 ef'8 c'4.~ c'4
    %I’m trying to love as he did, in all that I do and say.
    c'8 d'8. ef'16 f'8 f'4 bf8 <bf' f'>4. ef'4 ef'8 d'8. ef'16 f'8 g'4 g'8 a'4.~ a'4
    %At times I am tempted to make a wrong choice,
    a'8 bf'4 bf'16 bf' a'8 f' d' g'8. f'16 ef'8 f'4
    %But I try to listen as the still small voice whispers,
    f'16 f' g'4 g'8 a'8 f' f'16 f'16 g'8 ( a' ) bf' c'' bf' c'' \bar "||"
    %“Love one another as Jesus loves you.
    \fbarre #"III"{d''4 d''16 d'' d''8 c'' bf'\2} \fbarre #"I"{bf' ef' g' f'4.}
    %Try to show kindness in all that you do.
    g'8. a'16 bf'8 f' bf' bf' bf'8. c''16 d''8 c''4
    %Be gentle and loving in deed and in thought,
    c''8 \fbarre #"III"{d''8. d''16 d''8 d'' c'' bf'\2} bf' a' g' f'4
    %For these are the things Jesus taught.”
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
  %I’m trying to be like Jesus; I’m following in his ways.
  s8 bf4. a <ef' g> bf bf d'8 c'4 bf8 g bf a4
  %I’m trying to love as he did, in all that I do and say.
  s8 bf4. <c' af>8 d' bf g8 ef' ef'16 d' c'4.\4 bf d'8 c' bf <fs' c'>8 a c' fs'4
  %At times I am tempted to make a wrong choice,
  s8 <g' g> d'4 <f' a>8 d'4 d'8 c'4 c'8 bf4
  %But I try to listen as the still small voice whispers,
  f'8\3 ef' g' <f' d'> a4 <ef' bf> g'8 <f' ef'> g' a'\2
  %“Love one another as Jesus loves you.
  bf8 f'4\3 <af' f' bf>4. <g' ef' bf> <d' bf>8 bf d'
  %Try to show kindness in all that you do.
  <ef' bf>4. <d' bf> <e' c'>8 g4 <f' ef' a>4.
  %Be gentle and loving in deed and in thought,
  <f'\3 bf>8 f'4\3 <af' f' bf>4. <g' ef' bf> <c' bf>
  %For these are the things Jesus taught.”
  bf4. g4 ef'8 <ef' bf>4 c'8 <d' bf>4 s8
  %second ending
  <ef' bf>4 c'8 <d' bf>4
}

verseOne = \lyricmode {
   I’m try -- ing to be like Je -- sus;
   I’m fol -- low -- ing in his ways.
   I’m try -- ing to love as he did, in all that I do and say.
   At times I am tempt -- ed to make a wrong choice,
   But I try to lis -- ten as the still small voice whis -- pers,

   “Love one a -- no -- ther as Je -- sus loves you.
   Try to show kind -- ness in all that you do.
   Be gen -- tle and lov -- ing in deed and in thought,
   For these are the things Je -- sus taught.” "2. I'm" taught
}

verseTwo = \lyricmode {
  I’m try -- ing to love my neigh -- bor;
  I’m learn -- ing to serve my friends.
  I watch for the day of glad -- ness when Je -- sus will come a -- gain.
  I try to re -- mem -- ber the les -- sons he taught.
  Then the Ho -- ly Spi -- rit en -- ters into my thoughts, say -- ing:

}
