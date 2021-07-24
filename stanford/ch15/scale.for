
      SUBROUTINE SCALE(N, ALPHA, X)
          INTEGER N
          REAL ALPHA, X(*)
C         
C         LOCAL VARIABLES
          INTEGER I

          DO 10 I = 1, N
              X(I) = ALPHA * X(I)
 10       CONTINUE
          

          RETURN
      END
