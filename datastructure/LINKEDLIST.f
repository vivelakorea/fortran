      PROGRAM MAIN

C        THIS DOESN'T WORK
C----------------------------------------
C        STRUCTURE /NODE/
C          INTEGER ITEM
C          RECORD /NODE/ NEXT
C        END STRUCTURE
C
C        RECORD /NODE/ HEAD, SECOND
C        HEAD.ITEM = 0
C        HEAD.NEXT = SECOND
C        HEAD.NEXT.ITEM = 1
C----------------------------------------


C       USE POINTER TO CREATE LINKED LIST
C       COMMAND : "gfortran -fdec-structure -fcray-pointer LINKEDLIST.f"
        STRUCTURE /NODE/
          INTEGER RECNUM
          CHARACTER*3 LABEL
          INTEGER NEXT
        END STRUCTURE

C       B IS A HEAD(BASE) NODE, AND R IS CURRENT NODE FOR EACH STEP
        RECORD /NODE/ R, B
        POINTER (PR, R), (PB, B)
        PB = MALLOC(12)
        PR = PB
        NODENUM = 1
        DO WHILE (NODENUM .LE. 4)
          IF (NODENUM .NE. 1) PR = R.NEXT
          CALL STRUCT_CREAT(PR, NODENUM)
          NODENUM = NODENUM + 1
        END DO
        R.NEXT = 0
        PR = PB
        DO WHILE (PR .NE. 0)
          PRINT *, R.RECNUM, ' ', R.LABEL
          PR = R.NEXT
        END DO

      END PROGRAM MAIN


      SUBROUTINE STRUCT_CREAT(PR, NUM)
        STRUCTURE /NODE/
          INTEGER RECNUM
          CHARACTER*3 LABEL
          INTEGER NEXT
        END STRUCTURE
        RECORD /NODE/ R
        POINTER (PR, R), (PB, B)
        CHARACTER V(4)*3 /'AAA', 'BBB', 'CCC', 'DDD'/
        R.RECNUM = NUM
        R.LABEL = V(NUM)
        PB = MALLOC(12)
        R.NEXT = PB       
      END SUBROUTINE STRUCT_CREAT