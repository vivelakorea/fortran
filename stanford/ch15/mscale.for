
      SUBROUTINE MSCALE(M, N, ALPHA, A, LDA)
          INTEGER M, N, LDA
          REAL ALPH, A(LDA, *)
C          
C         LOCAL VARIABLES
          INTEGER J

          DO 10 J = 1, N
              CALL SCALE(M, ALPHA, A(1, J))
 10       CONTINUE
          
          RETURN
      END
