
      INCLUDE 'saxpy.for'


      SUBROUTINE MATVEC(M, N, A, LDA, X, Y)
          INTEGER M, N, LDA
          REAL X(*), Y(*), A(LDA, *)
C         COMPUTE Y = A * X, WHERE A IS M BY N AND STORED IN AN ARRAY
C         WITH LEADING DIMENSION LDA
C          
C         LOCAL VARIABLES
          INTEGER I, J
          
C         INITIALIZE Y
          DO 10 I = 1, M
              Y(I) = 0.
 10       CONTINUE
          
C         MATRIX-VECTOR PRODUCT BY SAXPY ON COLUMNS IN A
C         NOTICE THAT THE LENGTH OF EACH COLUMN OF A IS M, NOT N.
          DO 20 J = 1, N
              CALL SAXPY (M, X(J), A(1, J), Y)
 20       CONTINUE

          RETURN
      END
