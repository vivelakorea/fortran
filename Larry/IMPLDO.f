      PROGRAM IMPLDO

        INTEGER LIMIT
        PARAMETER (LIMIT = 10)
        REAL VELOC(LIMIT)

        READ *, (VELOC(I), I = 1,10)

        CALL PRTARR(VELOC, LIMIT)
        CALL ADD1(VELOC, LIMIT)
        CALL PRTARR(VELOC, LIMIT)

      END PROGRAM IMPLDO



      SUBROUTINE PRTARR(ARR, N)
        INTEGER N, I
        REAL ARR(N)

C        DO 100, I = 1,N
          PRINT *, (ARR(I), I=1,N)
C 100     CONTINUE
      END SUBROUTINE PRTARR

      SUBROUTINE ADD1(ARR, N)
        INTEGER N, I
        REAL ARR(N)
        
        DO 110, I=1,N
          ARR(I) = ARR(I) + 1
110     CONTINUE
      END SUBROUTINE ADD1