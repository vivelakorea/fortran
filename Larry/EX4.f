        PROGRAM EX4

        INTEGER I, N
        DOUBLE PRECISION X, A, B, C

C         DO 10, I = 1,100
C           PRINT *, I
C 10      CONTINUE
C        I = 1
C        DO WHILE (I .LE. 100)
C          PRINT *, I
C          I = I + 1
C        END DO

C        I = 1
C 20      IF (I .LE. 100) THEN
C          PRINT *, I
C          I = I + 1
C          GOTO 20
C        END IF

C        I = 1
C 30      CONTINUE
C          PRINT *, I
C          I = I + 1
C        IF (I .LE. 100) GOTO 30

        I = 0
        N = 10
        DO WHILE (I .LT. 10)
          READ *, X, A, B, C
          IF (X .GE. A) THEN
            X = SQRT(A)
            PRINT *, X, A 
          ELSE IF (X .GT. B) THEN
            PRINT *, B
          ELSE IF (X .GE. C) THEN
            PRINT *, C
          ELSE
            PRINT *, 'Error'
          END IF
          I = I + 1
        END DO


        END PROGRAM EX4