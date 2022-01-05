      PROGRAM MAIN

        LOGICAL ISPRIM
        INTEGER N, I

        DO 20 I = 2, 30
          PRINT *, I, 'IS PRIME : ', ISPRIM(I)
20      CONTINUE

      END PROGRAM MAIN


      
      LOGICAL FUNCTION ISPRIM(N)
      
        INTEGER N, MAXDIV
        MAXDIV = INT(SQRT(REAL(N)))

        ISPRIM = .TRUE.
        DO 10 I = 2, MAXDIV
          IF (MOD(N, I) .EQ. 0) THEN
            ISPRIM = .FALSE.
            GO TO 10
          END IF
10      CONTINUE
      
      END 