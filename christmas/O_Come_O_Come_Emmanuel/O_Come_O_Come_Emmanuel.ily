\version "2.18.2"
\language "english"
\include "predefined-ukulele-fretboards.ly"

\header {
    title = "O Come, O Come, Emmanuel"
    composer = "15th Century French melody"
    poet = "English lyrics by John Mason Neale"
    arranger = "arr. Jordan Anderson"
    tagline = ""
  }

drop-g-ukulele-tuning = \stringTuning <g c' e' a'>


% Chords

TopChords = \chordmode {
  e:m a:m g d
}

StaffChords = \chordmode {
  s4
  e1:m a:m e:m g d2 a:m e1:m
  a:m g d e:m a:m g
  d e:m a:m e:m g d2 a:m e2.:m
}

% Main music
leadmelody = {
  % O come, O come, Emmanuel,
  e'4\3 g' b' b' b'  a' c'' b' a' g'2.
  % And ransom captive Israel,
  a'4 b' g' e' g' a' fs' e' d' e'2.
  % That mourns in lonely exile here,
  a'4 a' e' e' fs' g'2 fs'4 e' d'2.
  % Until the Son of God appear.
  e'4\3 g' b' b' b'  a' c'' b' a' g'2.
  % Rejoice! Rejoice! Emmanuel
  d''4 d''2. b'4 b'2. b'4 a' c'' b' a' g'2.
  % Shall come to thee, O Israel.
  a'4 b' g' e' g' a' fs' e' d' e'2.
  \bar "|."
}

easyalto = {
  s4 e'1\3 c'2 d' e'2.\3
  c'4 d'2 b d' a g2.
  e'4 c'1 d' a
  e'1\3 c'2 d' e'2.\3
  s4 fs'1 g' c'2 d'2 e'2.\3
  c'4 d'2 b d' a g2.
}

verseOne = \lyricmode {
  O come, O come, Em -- man -- _ _ u -- el,
  And ran -- som cap -- tive Is -- _ _ ra -- el,
  That mourns in lone -- ly ex -- _ ile here,
  Un -- til the Son of God _ _ ap -- pear.
  Re -- joice! Re -- joice! Em -- man -- _ _ u -- el
  Shall come to thee, O Is -- _ _ ra -- el.
}

verseTwo = \lyricmode {
  O come, Thou Rod of Jes -- _ _ se, free
  Thine own from Sa -- tan's ty -- _ _ ran -- ny;
  From depths of hell Thy peo -- _ ple save,
  And give them vic -- tory o'er _ _ the grave.
  Re -- joice! Re -- joice! Em -- man -- _ _ u -- el
  Shall come to thee, O Is -- _ _ ra -- el.
}

verseThree = \lyricmode {
  O come, Thou Day -- spring, from _ _ on high,
  And cheer us by Thy draw -- _ _ ing nigh;
  Dis -- perse the gloom -- y clouds _ of night,
  And death's dark sha -- dows put _ _ to flight.
  Re -- joice! Re -- joice! Em -- man -- _ _ u -- el
  Shall come to thee, O Is -- _ _ ra -- el.
}

verseFour = \lyricmode {
  O come, Thou Key of Da -- _ _ vid, come
  And o -- pen wide our heav'n -- _ _ ly home;
  Make safe the way that leads _ on high,
  And close the path to mi -- _ _ se -- ry.
  Re -- joice! Re -- joice! Em -- man -- _ _ u -- el
  Shall come to thee, O Is -- _ _ ra -- el.
}

verseFive = \lyricmode {
  O come, A -- do -- nai, Lord _ _ of might,
  Who to Thy tribes, on Si -- _ _ nai's height,
  In an -- cient times didst give _ the law
  In cloud and ma -- jes -- ty _ _ and awe.
  Re -- joice! Re -- joice! Em -- man -- _ _ u -- el
  Shall come to thee, O Is -- _ _ ra -- el.
}