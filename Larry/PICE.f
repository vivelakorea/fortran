        PROGRAM PICE

        DOUBLE PRECISION X, Y
        READ *, X
        IF (X .GT. 0) THEN
          Y = X ** 2
        ELSE
          Y = -X
        END IF

        PRINT *, Y

        END PROGRAM PICE