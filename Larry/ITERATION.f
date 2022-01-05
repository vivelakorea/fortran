        PROGRAM DOCONT
        
        INTEGER I, SUM
    
        DO 10, I=1,10,2
          PRINT *, I
10      CONTINUE

        SUM = 0
        I = 1
        DO WHILE (SUM .LT. 100)
          SUM = SUM + I
          PRINT *, SUM
          I = I + 1
        END DO

        SUM = 0
        I = 1
20      IF (SUM .LT. 100) THEN
          SUM = SUM + I
          PRINT *, SUM
          I = I + 1
          GO TO 20
        END IF

        SUM = 0
        I = 1
30      CONTINUE
          SUM = SUM + I
          PRINT *, SUM
          I = I + 1
        IF (.NOT. (SUM .GT. 100)) GO TO 30

        END PROGRAM DOCONT