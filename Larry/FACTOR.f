      PROGRAM MAIN
        
        INTEGER N, FACTOR
        
        READ *, N
        PRINT *, FACTOR(N)

      END PROGRAM MAIN


      
      
      
      INTEGER FUNCTION FACTOR(N)
        
        INTEGER N, I
        
        FACTOR = 1
        DO 10 I = 2, N
          FACTOR = FACTOR * I
10      CONTINUE

      END