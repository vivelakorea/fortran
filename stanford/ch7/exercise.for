      PROGRAM EXERCISE
          LOGICAL X, Y
          X = .TRUE. .AND. .FALSE. .OR. .TRUE.
C         X = .TRUE.
          Y = 2 .LT. 2 .OR. 5 .EQ. 11/2
C         Y = .TRUE.
          WRITE (*,*) X, Y

          STOP
      END
