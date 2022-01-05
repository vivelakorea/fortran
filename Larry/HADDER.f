      PROGRAM HADDER

        LOGICAL A, B, SUM, CARRY, XOR, X, Y
        XOR(X, Y) = X .NEQV. Y
        PRINT *, 'ENTER A, B'
        READ *, A, B
        CARRY = A .AND. B
        SUM =  XOR(A, B)
        PRINT *, 'CARRY(A,B) = ', CARRY
        PRINT *, 'SUM(A,B) = ', SUM

      END PROGRAM HADDER