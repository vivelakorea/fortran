
      PROGRAM EXERCISE
          INTEGER I, J
          CHARACTER LINE(10)
C---------EXERCISE A------------------

          WRITE (*,100) 12, 12345
          WRITE (*,110) 0.12345
          WRITE (*,110) 123.45
          WRITE (*,110) 12345.0
 100      FORMAT (I4, 2X, I4)
 110      FORMAT (F6.2)

C---------EXERCISE B------------------

          
          DO 10 I = 1, 7
              LINE = ''
              DO 20 J = 1, 7-I
                  LINE = LINE // ' '
 20           CONTINUE
              WRITE (*, '(A10, I1)') LINE, I
 10       CONTINUE

          STOP
      END
