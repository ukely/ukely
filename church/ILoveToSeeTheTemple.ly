\version "2.18.2"
\language "english"

\header {
    title = "I Love to See the Temple"
    composer = "Janice Kapp Perry, b. 1938"
    instrument = "Drop-G Ukulele"
    arranger = "arr. Jordan Anderson"
    % these appear at bottom of page
    copyright = "© 1980 by Janice Kapp Perry.
This song may be copied for incidental, noncommercial church or home use."
    tagline = "https://www.churchofjesuschrist.org/music/library/childrens-songbook/i-love-to-see-the-temple"
  }

% Fret chords at top of piece

\include "predefined-ukulele-fretboards.ly"
drop-g-ukulele-tuning = \stringTuning <g c' e' a'>

TopChords = {
  \chordmode {
    f c:7 bf g:m g:7 a:m
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
  % I love to see the temple
  c'4 a'8 bf' c''4 f' <f' d'> e'
  % I'm going there someday
  c'4 f'8 g' <a' f'>4 c' <d' bf>2
  %To feel the Holy Spirit,
  d'4 g'8 a' <bf' g'>4 f' <f' d' bf> <e' c'>
  %To listen and to pray.
  <c' bf> f'8 a' <g' d' bf>4 <e' c' bf> <f' c' a>2
  %For the temple is a house of God,
  <a' f'>8 <bf' g'> <c'' f'>4. <bf' g'>8 <a' f'> <c'' e'> bf' a' f'4
  %A place of love and beauty.
  g'4 <a'^0 d'^2>4. g'8-3 <f'-1 d'> e' d'4 c'
  %I’ll prepare myself while I am young;
  <f' d'>8 <g' e'> a' bf' <c'' a'>4 <a' c'> <d' bf>8 f' <f' d' bf>4\fermata
  %This is my sacred duty.
  d'' c''4. a'8 a' f' <g' e' bf>4 <f' c' a>\fermata
  \bar "|."
}
alto = {
  % I love to see the temple
  s4 <f' c'>2 f'4 bf2.
  % I'm going there someday
  <c' a>2 c'4 s2
  %To feel the Holy Spirit,
  a4 <d' g>2. s4 s
  %To listen and to pray.
  s4 <c' a> s s s2
  %For the temple is a house of God,
  s8 s8 a2. d'2.
  %A place of love and beauty.
  b2-4 b4 bf?2
  %I’ll prepare myself while I am young;
  s8 s f'2 s4 s8 s s4
  %This is my sacred duty.
  s e'2 d'4 s s
}

StaffChords = \chordmode {
  s4 f2. c:7 f bf g:m c:7 f4 c2:7 f2.
  f2. bf g:7 c:7 f bf a2:m bf4 c:7 f
}

verseOne = \lyricmode {
  I love to see the tem -- ple.
  I’m go -- ing there some -- day
  To feel the Ho -- ly Spir -- it,
  To lis -- ten and to pray.
  For the tem -- ple is a house of God,
  A place of love and beau -- ty.
  I’ll pre -- pare my -- self while I am young;
  This is my sa -- cred du -- ty.
}

verseTwo = \lyricmode {
  I love to see the tem -- ple.
  I’ll go in -- side some -- day.
  I’ll cov -- ’nant with my Fa -- ther;
  I’ll prom -- ise to o -- bey.
  For the tem -- ple is a ho -- ly place
  Where we are sealed to -- geth -- er.
  As a child of God, I’ve learned this truth:
  A fam -- ’ly is for -- ev -- er.
}

\score {
  <<
    \new ChordNames \StaffChords
    \new StaffGroup <<
      \new Staff <<
        \time 3/4
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
