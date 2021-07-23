

      INCLUDE 'rain'

      PROGRAM ANNUALRAIN
          REAL R, T, S
          INTEGER M

          READ (*,*) T
          S = 0.
          DO 10 M = 1, 12
              S = S + R(M, T)
 10       CONTINUE
          WRITE (*,*) 'ANNUAL RAINFALL IS ', S, ' INCHES'

          STOP
      END
