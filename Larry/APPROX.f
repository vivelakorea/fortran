        PROGRAM APPROX

        REAL X, Y
        LOGICAL EQUALS
        
        PRINT *, 'ENTER REAL NUMBER'
        READ *, X
        Y = (1.0 / X) * X
        PRINT *, 'X = ', X
        PRINT *, '1.0 - Y = ', 1.0 - Y
        EQUALS = Y .EQ. 1.0
        PRINT *, 'Y EQUALS 1? ', EQUALS

        END PROGRAM APPROX