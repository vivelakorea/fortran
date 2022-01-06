      PROGRAM OPN

        INTEGER CODE, TEMP, PRESS
        
        OPEN (UNIT = 12, FILE = 'INFO', STATUS = 'OLD')
        READ (12, *) CODE, TEMP, PRESS
        WRITE (*, '(I5, I5, I5)') CODE, TEMP, PRESS
        CLOSE (UNIT = 12)


        OPEN (UNIT = 13, FILE = 'REPORT', STATUS = 'NEW')
        WRITE (13, '(I5, I5, I5)') CODE, TEMP, PRESS
        CLOSE (UNIT = 13)

      END PROGRAM OPN