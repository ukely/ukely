\version "2.20.0"
%% Span -----------------------------------
%% Syntax: \bbarre #"text" { notes } - text = any number of box
fbarre =
#(define-music-function (barre location str music) (string? ly:music?)
   (let ((elts (extract-named-music music '(NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
       \once \override TextSpanner.staff-padding = #3
       \once \override TextSpanner.style = #'line
       \once \override TextSpanner.to-barline = ##f
       \once \override TextSpanner.bound-details =
            #` ((left
                (text . ,#{ \markup { B #str } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -2))
                (right
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . 2)))
      $music
   #})

hbarre =
#(define-music-function (barre location str music) (string? ly:music?)
   (let ((elts (extract-named-music music '(NoteEvent EventChord))))
     (if (pair? elts)
         (let ((first-element (first elts))
               (last-element (last elts)))
           (set! (ly:music-property first-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction -1)
                       (ly:music-property first-element 'articulations)))
           (set! (ly:music-property last-element 'articulations)
                 (cons (make-music 'TextSpanEvent 'span-direction 1)
                       (ly:music-property last-element 'articulations))))))
   #{
       \once \override TextSpanner.font-size = #-2
       \once \override TextSpanner.font-shape = #'upright
       \once \override TextSpanner.staff-padding = #3
       \once \override TextSpanner.style = #'line
       \once \override TextSpanner.to-barline = ##f
       \once \override TextSpanner.bound-details =
            #` ((left
                (text . ,#{ \markup { 1/2 B #str } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . -2))
                (right
                (text . ,#{ \markup { \draw-line #'( 0 . -.5) } #})
                (Y . 0)
                (padding . 0.25)
                (attach-dir . 2)))
%% uncomment this line for make full barred
      % \once \override TextSpanner.bound-details.left.text = \markup{"B" #str}
      $music
   #})

%shbarre =
%#(define-music-function (barre location str music) (string? ly:music?)
%  #{ ^\markup{\tiny {1/2 B #str}} $music})


%% Syntaxe: \fbarre #"text" { notes } - text = any number of fret
%\relative c'{ \clef "G_8" \stemUp \fbarre #"III" { <f a'>16[  c' d c d8] } }
%\relative c'{ \clef "G_8" \stemUp \hbarre #"III" { <f a'>16  c' d c d8 } }

%% these functions only work for spans of notes. Use below for single note
%\relative c'{ \clef "G_8" \stemUp  <f a'>16 ^\markup{\tiny "B III"} }
