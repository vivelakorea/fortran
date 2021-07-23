
      PROGRAM EXERCISE
          
C---------EXERCISE A------------------------------------

          INTEGER I, S
          DOUBLE PRECISION X
          
          S = 0
          DO 10 I = 1, 100, 2
              S = S + I
 10       CONTINUE
          WRITE (*,*) 'FLAG1: S = ', S
          
          I = 0
          X = 1.
          
 20       CONTINUE
              IF (X .GE. 0) THEN
                  X = -(X + 1.)
              ELSE
                  X = -(X - 1.)
              ENDIF
              I = I + 1
              WRITE (*,*) 'FLAG2: X = ', X, 'I = ', I
          IF (ABS(X) .LE. 10) GOTO 20 

C---------EXERCISE B------------------------------------
          
          I = 1
          S = 0
          DO 30 I = 1, 50
              IF (I .LE. 10) THEN
                  S = S + I
              ELSE IF (I .LE. 20) THEN
                  S = S - 1
              ELSE
                  S = S * 2
              END IF
              WRITE (*,*) 'FLAG3: S = ', S
 30       CONTINUE
          
          STOP
      END




