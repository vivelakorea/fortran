
      SUBROUTINE SAXPY(N, ALPHA, X, Y)
          INTEGER N
          REAL ALPHA, X(*), Y(*)
C         SAXPY : COMPUTE Y := ALPHA * X + Y
C         WHERE X AND Y ARE VECTORS OF LENGTH N (AT LEAST).
C
C         LOCAL VARIABLES
          INTEGER I

          DO 10 I = 1, N
              
              Y(I) = ALPHA * X(I) + Y(I)

 10       CONTINUE
          
          RETURN
      END
