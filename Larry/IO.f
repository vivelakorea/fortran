        PROGRAM IO

        REAL HGHT0, HGHT, VELOC0, VELOC, ACCEL, TIME
        
        PARAMETER (ACCEL = -9.807)
        READ *, HGHT0, VELOC0, TIME
        HGHT = 0.5 * ACCEL * TIME**2 + VELOC0 * TIME + HGHT0
        VELOC = ACCEL * TIME + VELOC0
        PRINT *, 'AT TIME ', TIME, ', '
        PRINT *, 'THE VERTICAL VELOCITY IS :', VELOC
        PRINT *, 'AND THE HEIGHT IS : ', HGHT
        

        END PROGRAM IO