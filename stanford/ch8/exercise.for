      PROGRAM EXERCISE
          DOUBLE PRECISION X, Y, T

          READ (*,*) X, Y
          
          IF ((X .GT. 0) .AND. (Y .GT. 0)) THEN
              T = X + Y
          ELSE IF ((X .GT. 0) .AND. (Y .LT. 0)) THEN
              T = X - Y
          ELSE IF (X .LT. 0) THEN
              T = Y
          ELSE
              T = 0
          ENDIF

          STOP
      END
