
      INCLUDE 'matvec.for'

      PROGRAM EXERCISE
          INTEGER NMAX, M, N, I, J
          PARAMETER (NMAX=40)
          REAL A(NMAX, NMAX), X(20), Y(10)
          M = 10
          N = 20
          DO 10 I = 1, M
              DO 20 J = 1, N
                  A(I, J) = I + J - 2
 20           CONTINUE
 10       CONTINUE
          DO 30 I = 1, 20
              X(I) = I
 30       CONTINUE
          
          CALL MATVEC(M, N, A, NMAX, X, Y)

          WRITE (*,*) Y
          
          STOP
      END
