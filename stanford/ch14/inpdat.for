
      PROGRAM INPDAT
          INTEGER NMAX, U, N, IOS
          REAL R
          PARAMETER (NMAX=1000, U=20)
          REAL X(NMAX), Y(NMAX), Z(NMAX)
          
          OPEN(U, IOSTAT=IOS, FILE='points.dat', STATUS='OLD')
          IF (IOS .NE. 0) THEN
              WRITE (*,*) 'FILE POINTS.DAT CANNOT BE OPENED'
          ENDIF

          READ (U, *) N
          IF (N .GT. NMAX) THEN
              WRITE (*,*) 'ERROR: N = ', N, 'IS LARGER THEN NMAX', NMAX
              GOTO 9999
          ENDIF

          DO 10 I = 1, N
              READ (U, *) X(I), Y(I), Z(I)
              WRITE (*, *) X(I), Y(I), Z(I)
              WRITE (*,*) NORM(X(I), Y(I), Z(I))
C              WRITE (*,*) 'NORM IS ', R
 10       ENDDO

          CLOSE(U)

 9999     STOP
      END


C      REAL FUNCTION NORM(X, Y, Z)
C          REAL X, Y, Z
C          NORM = REAL(SQRT(X ** 2 + Y ** 2 + Z ** 2))
C          RETURN
C      END
          
