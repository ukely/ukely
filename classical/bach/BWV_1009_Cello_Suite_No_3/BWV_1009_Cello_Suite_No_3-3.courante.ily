\include "../../../lib/barre.ily"

courante = \transpose c c' {
    \key c \major
    \time 3/4
    \set Staff.midiInstrument = "acoustic guitar (nylon)"
    \override TextScript #'padding = #2.5

    \repeat volta 2 {
        \partial 8 c'8
        c'8 g e c \transpose c c'{g, e,         %  1
         c,}[ c'( d' c' b c')]                  %  2
        d'8 b g d \transpose c c'{b, g,         %  3
        f,}[ d'( c' b a g)]                     %  4
        c' b( a g f e)                          %  5
        f d g, a g f                            %  6
        e( d c b, c) g,                         %  7
        c'4. c16[( d e8 fis)]                   %  8 c, to c'
        b, d( g a b c')                         %  9
        gis d' e d'( c' b)                      % 10
        c' b a gis a e                          % 11
        c( d e) c \transpose c c'{a, g,!        % 12
        fis,} a, d e fis g                      % 13
        a fis d c' b a                          % 14
        b( a g) fis g d                         % 15
        b,( c d) b, \transpose c c'{g, f,!      % 16
        e,8}[ g( a g fis g)]                    % 17
        c8 d c b, a, g,                         % 18
        fis a( b a g a)                         % 19 fis, to fis
        c e d c b, a,                           % 20
        g, b( c' b) e b                         % 21
        a, c'( d' c') fis c'                    % 22
        b, d'( e' d' c' b)                      % 23
        a( g f! e f d)                          % 24
        c f( e d e c)                           % 25 c, to c
        b, c( d e fis g)                        % 26
        a, d( e fis g a)                        % 27
        g, e( fis g a b)                        % 28
        \fbarre #"II"{ d8[ c' a\2 c' fis c']    % 29 d, to d
        d8 c' a\2 c' fis c' }                   % 30
        d bes g bes fis bes                     % 31
        d bes g bes fis bes                     % 32
        ees a g a fis a                         % 33
        ees a g a fis a                         % 34
        c' a fis d \transpose c c'{a, fis,      % 35
        d,4.} d8[ fis a]                        % 36
        b8( c' d') a b g                        % 37
        a( b c') g a fis                        % 38
        g d e c a, fis                          % 39
        g,2 r8                                  % 40
    }
    \break
    \repeat volta 2 {
        d'8
        d' b g d b, d                             % 41
        f( d b, a, b,) g,                         % 42
        c f e d e g                               % 43
        c'( d' e') b c' a                         % 44
        f( g a) e f d                             % 45
        b, a( b c' d' b)                          % 46
        gis8 fis gis a b gis                      % 47
        e b gis e e' d\4                          % 48
        c a e c b, g!                             % 49
        a, f c a, g, e                            % 50
        %f, d a, f, e, c                           % 51
        a, d a, f e c                             % 51
        d8[ c'( b c' d' gis)]                     % 52 d, to d
        c8[ e'( d' c'\2 b\2 a)]                       % 53 c, to c
        e8 d'( c' b a gis)                        % 54
        a e( d c d e)                             % 55
        a,4. a16[( b c' b c' a)]                  % 56
        g8 e c e g bes                            % 57
        e8[ d'( c' bes a g)]                      % 58 e, to e
        a8 f( e f) c f                            % 59
        a, c f a g a                              % 60 f, to f
        bes( a g) f e g                           % 61
        cis8 e g, \transpose c c' {bes,( a, g,)   % 62
        f, e, f, g, a, f,                         % 63
        d, f, a,} d( e f)                         % 64
        gis, f( e d c b,)                         % 65
        a, c f a f d                              % 66
        b, a( g f e d)                            % 67
        c e a c' a f                              % 68
        d c'( b a g f)                            % 69
        e8 g\3 c'\2 e' c'\2 a\2                           % 70
        f\3 e'( d' c'\2 b\2 a)                          % 71
        b d' b g d b,                             % 72
        g, f d f b, f                             % 73
        g, f d f b, f                             % 74
        g, ees c\4 ees b, ees                       % 75
        g, ees c\4 ees b, ees                       % 76
        aes, d c\4 d b, d                           % 77
        aes,8 d c\4 d b, d                          % 78
        f g, b, d f b                             % 79
        d'4. c'8[ b a]                            % 80
        g( f e) g f d                             % 81
        e( d c) e d b,                            % 82
        c g a f d b                               % 83
        <c' c e>2 r8       % 84 c, to c remove g,
    }
}
