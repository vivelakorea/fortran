
      PROGRAM LOOPPRINT
          INTEGER I, J
          INTEGER A(5, 10)
          
          DO 10 I = 1, 5
              DO 20 J = 1, 10
                  A(I, J) = I + J
 20           CONTINUE
 10       CONTINUE

          DO 30 I = 1, 5
              WRITE (*, 1000) (A(I, J), J = 1, 10)
 30       CONTINUE
 1000     FORMAT (I6)
          
          STOP
      END
