      INCLUDE 'fac.for'
      INCLUDE 'qsolve.for'
      
      PROGRAM EXERCISE
C---------EXERCISE A-------------------------------------
          INTEGER N, FAC, A, B, C
          DOUBLE PRECISION R(2)
 10       CONTINUE
              WRITE (*,*) 'GIVE N: '
              READ (*,*) N
              IF (N .GT. 0) THEN
                  WRITE (*,*) N, ' FACTORIAL IS', FAC(N)
                  GOTO 10
              ENDIF
C         END OF LOOP


C---------EXERCISE B-------------------------------------

 20       IF (.TRUE.) THEN
              WRITE (*,*) 'GIVE A, B, C:'
              READ (*,*) A, B, C
              CALL QSOLVE(A, B, C, R)
              WRITE (*,*) 'ROOT FOR ', A, 'X**2 + ', B, 'X + ', C,
     +        ' = 0 IS'
              WRITE (*,*) R(1)
              WRITE (*,*) 'AND'
              WRITE (*,*) R(2)
              GOTO 20
          ENDIF

          STOP
      END
