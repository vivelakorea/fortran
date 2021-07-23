      PROGRAM EXERCISE
          REAL X, Y
C         DOUBLE PRECISION .EQ. REAL*8
          DOUBLE PRECISION W
          
          X = 1. / 3.
          Y = 2. / 3.

          W = X * Y
          WRITE (*,*) W
          
          W = DBLE(X) * DBLE(Y)
          WRITE (*,*) W
C         
C         W CANNOT BE 0.2222222... BECAUSE ALL DATA IN COMPUTER IS SAVED
C         AS BINARY FORM
          
          STOP
      END 
