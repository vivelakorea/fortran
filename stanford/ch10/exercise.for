
      PROGRAM EXERCISE
          INTEGER NMAX, I, J
          PARAMETER (NMAX=40)
          REAL A, X, Y
          DIMENSION A(NMAX, NMAX), X(NMAX), Y(NMAX)

C---------EXERCISE A-------------------------------------- 
          
          DO 10 I = 1, NMAX
              DO 20 J = 1, NMAX
                  A(I, J) = 0
 20           CONTINUE 
 10       CONTINUE

          DO 30 I = 1, 10
              DO 40 J = 1, 20
                  A(I, J) = I + J + 2
 40           CONTINUE 
 30       CONTINUE
          
          DO 50 I = 1, NMAX
              X(I) = I
 50       CONTINUE
  
C         WRITE (*,*) INT(A(:10, :20))

C---------EXERCISE B-------------------------------------- 

C         MATRIX MULTIPLICATION
          DO 60 I = 1, NMAX
              Y(I) = 0
              DO 70 J = 1, NMAX
                  Y(I) = Y(I) + A(I, J) * X(J)
 70           CONTINUE
 60       CONTINUE
          
          WRITE (*,*) Y


          STOP
      END
