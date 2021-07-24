
      PROGRAM MAIN
          REAL ORIGO(3), X(3)
          REAL D
          READ (*, *) ORIGO(1), ORIGO(2), ORIGO(3)

 10       CONTINUE
              READ (*, *) X(1), X(2), X(3)
              D = DIST(X, ORIGO)
              WRITE (*, *) 'THE DISTANCE IS ', D
          IF (X(1) .GE. 0) GOTO 10

          STOP
      END


      REAL FUNCTION DIST(X, ORIGO)
          REAL X(3), ORIGO(3)
          DIST = SQRT((X(1) - ORIGO(1)) ** 2
     +              + (X(2) - ORIGO(2)) ** 2
     +              + (X(3) - ORIGO(3)) ** 2)
          RETURN
      END
          
          
