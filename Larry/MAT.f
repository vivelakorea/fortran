      PROGRAM MAIN

        INTEGER MAT(4, 3), R, C

        OPEN (UNIT = 1, FILE = 'MATDAT', STATUS = 'OLD')
        READ (1, *) ((MAT(C, R), R = 1,3), C = 1,4)
        CLOSE (UNIT = 1)

        PRINT '(4I4/)', MAT

      END PROGRAM MAIN