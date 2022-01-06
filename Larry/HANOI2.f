      PROGRAM MAIN

        INTEGER N, COUNT, HANOI
        EXTERNAL HANOI

        READ *, N
        COUNT = HANOI(N, 1, 3, HANOI)
        PRINT *, 'TOTAL MOVE:', COUNT
        
      END PROGRAM MAIN






      INTEGER FUNCTION HANOI(N, A, B, DUMFUN)

        INTEGER N, A, B, C, H1, H2, DUMFUN
        EXTERNAL DUMFUN

        IF (N .EQ. 1) THEN
          PRINT *, 'MOVE FROM', A, 'TO', B
          HANOI = 1
          GO TO 10
        END IF

C       DETERMINE C
        IF (A .EQ. 1) THEN
          IF (B .EQ. 2) THEN
            C = 3
          ELSE
            C = 2
          END IF
        ELSE IF (A .EQ. 2) THEN
          IF (B .EQ. 1) THEN
            C = 3
          ELSE
            C = 1
          END IF
        ELSE
          IF (B .EQ. 1) THEN
            C = 2
          ELSE
            C = 1
          END IF
        END IF

        H1 = DUMFUN(N-1, A, C, DUMFUN)
        PRINT *, 'MOVE FROM', A, 'TO', B
        H2 = DUMFUN(N-1, C, B, DUMFUN)
        HANOI = H1 + H2 + 1

10      CONTINUE
      END FUNCTION HANOI