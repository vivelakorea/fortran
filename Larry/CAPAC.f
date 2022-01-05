        PROGRAM CAPAC

          REAL START, FINISH, STEP, TIME, VOLTS
          
          PRINT *, 'ENTER THE STARTING AND ENDING TIMES AND'
          PRINT *, 'THE STEP TO USE FOR TIMES IN THE TABLE:'
          READ *, START, FINISH, STEP
          TIME = START
          DO WHILE (TIME .LE. FINISH)
            VOLTS = V(TIME)
            PRINT *, 'AT TIME', TIME, ' VOLTAGE = ', VOLTS
            TIME = TIME + STEP
          END DO

        END PROGRAM CAPAC





        REAL FUNCTION V(T)
          REAL T
          V = (T + 0.1) * EXP(SQRT(T))
        END