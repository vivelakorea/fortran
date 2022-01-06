      PROGRAM SORTER

        INTEGER LIMIT
        PARAMETER (LIMIT = 100)
        INTEGER COST(LIMIT), N
        
        CALL RDCOST(COST, LIMIT, N)
        CALL SORT(COST, LIMIT, N)
        CALL OUTPUT(COST, LIMIT, N)

      END PROGRAM SORTER



      SUBROUTINE RDCOST(COST, LIMIT, N)
        
        INTEGER LIMIT, COST(LIMIT), N, INDATA
        
        PRINT *, 'ENTER LABOR COSTS IN MILLIONS 
     &(0 OR NEGATIVE TO STOP).'
        N = 0
        READ *, INDATA
10      IF (INDATA .GT. 0) THEN
          N = N + 1
          COST(N) = INDATA
          READ *, INDATA
          GO TO 10
        END IF

      END SUBROUTINE RDCOST


      SUBROUTINE SORT(ITEM, LIM, N)
      
        INTEGER LIM, ITEM(LIM), N, I

        DO 20 I = 1, N-1
          SMALL = ITEM(I)
          LOCSM = I
          DO 10 J = I+1, N
            IF (ITEM(J) .LT. SMALL) THEN
              SMALL = ITEM(J)
              LOCSM = J
            END IF
10        CONTINUE
          ITEM(LOCSM) = ITEM(I)
          ITEM(I) = SMALL
20      CONTINUE

      END SUBROUTINE SORT


      SUBROUTINE OUTPUT(COST, LIMIT, N)

        INTEGER LIMIT, COST(LIMIT), N, I
        
        PRINT 100, 'SORTED LIST', '===== ===='
100     FORMAT(2(/, 1X, A))
        DO 10 I = 1, N
          PRINT 101, COST(I)
101       FORMAT(1X, I6)
10      CONTINUE
        IF (MOD(N,2) .NE. 0) THEN
          PRINT 102, COST((N+1)/2)
        ELSE
          PRINT 102, INT((COST(N/2) + COST(N/2+1)) / 2.0)
        END IF
102     FORMAT(/1X, 'MEDIAN = ', I6, ' MILLION DOLLARS')
      END SUBROUTINE OUTPUT
