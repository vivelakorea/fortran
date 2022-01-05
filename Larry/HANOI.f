      PROGRAM MAIN

        INTEGER N, COUNT
        COMMON /GLOBAL/ COUNT
        EXTERNAL HANOI
        
        COUNT = 0
        READ *, N

        CALL HANOI(N, 1, 3, HANOI)
        PRINT *, 'TOTAL MOVE : ', COUNT
        
      END PROGRAM MAIN

      


      
      SUBROUTINE HANOI(N, A, B, DUMSUB)
C       MOVES N HANOI TOWER FROM A TO B
C       WHICH INCLUDES 
C         1) MOVING N-1 HANOI TOWER FROM A TO C
C         2) MOVING LAST HANOI DISK FROM A TO B
C         3) MOVING N-1 HANOI TOWER FROM C TO B
C       BASE CASE: N .EQ. 1. JUST MOVE ONE DISK FROM A TO B
        INTEGER N, A, B, C, COUNT
        COMMON /GLOBAL/ COUNT
        EXTERNAL DUMSUB

        IF (N .EQ. 1) THEN
          PRINT *, 'MOVE FROM ', A, ' TO ', B
          COUNT = COUNT + 1
          GO TO 10
        END IF

C       DETERMINE C
        IF (A .EQ. 1) THEN
          IF (B .EQ. 2) THEN
            C = 3
          ELSE
            C = 2
          END IF
        ELSE IF (A .EQ. 2) THEN
          IF (B .EQ. 1) THEN
            C = 3
          ELSE
            C = 1
          END IF
        ELSE
          IF (B .EQ. 1) THEN
            C = 2
          ELSE
            C = 1
          END IF
        END IF

        CALL DUMSUB(N-1, A, C, DUMSUB)
        PRINT *, 'MOVE FROM ', A, ' TO ', B
        COUNT = COUNT + 1
        CALL DUMSUB(N-1, C, B, DUMSUB)


10      CONTINUE
      END SUBROUTINE HANOI