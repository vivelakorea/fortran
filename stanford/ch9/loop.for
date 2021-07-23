      PROGRAM LOOP
      
          INTEGER I, J, K
          
          DO 10 I = 1, 10
              WRITE (*,*) I
 10       CONTINUE

          
          J = 100
 20       IF (J .LE. 110) THEN
              WRITE (*,*) J
              J = J + 1
          GOTO 20
          ENDIF


          K = 1000
 30       CONTINUE
              WRITE (*,*) K
              K = K + 1
          IF (K .LE. 1010) GOTO 30



          STOP
      END