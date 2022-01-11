      PROGRAM MAIN

        INTEGER BNUMS(3) / 2, 4, 3 /
        INTEGER CNUMS(3) / 3, 6, 4 /
        INTEGER I, TMP, FLAG

        STRUCTURE /NODE/
          INTEGER ITEM
          INTEGER NEXT
        END STRUCTURE

C       B IS A HEAD(BASE) NODE, AND R IS CURRENT NODE FOR EACH STEP
C       C IS ANOTHER BASE NODE
        RECORD /NODE/ R, B, C, ADDED, R1, R2
        POINTER (PR, R), (PB, B), (PC, C), (PADDED, ADDED), (PR1, R1),
     &          (PR2, R2)
        PB = MALLOC(12)
        PC = MALLOC(12)
        PADDED = MALLOC(12)

C        NODENUM = 1
C        DO WHILE (NODENUM .LE. 4)
C         IF (NODENUM .NE. 1) PR = R.NEXT
C          CALL STRUCT_CREAT(PR, NODENUM)
C          NODENUM = NODENUM + 1
C        END DO
C        R.NEXT = 0

C       RECORD LINKED LIST
        PR = PB
        DO 10 I = 1, 3
          CALL STRUCT_CREAT(PR, (BNUMS(I)))
          PR = R.NEXT
10      CONTINUE
        R.NEXT = 0

        PR = PC
        DO 20 I = 1, 3
          CALL STRUCT_CREAT(PR, (CNUMS(I)))
          PR = R.NEXT
20      CONTINUE
        R.NEXT = 0

        PR = PADDED
        CALL STRUCT_CREAT(PR, 0)
        PR1 = PB
        PR2 = PC
        FLAG = 0
        DO WHILE ((PR1 .NE. 0) .AND. (PR2 .NE. 0))
          TMP = 0
          TMP = TMP + FLAG
          IF (PR1 .NE. 0) TMP = TMP + R1.ITEM
          IF (PR2 .NE. 0) TMP = TMP + R2.ITEM
          IF (TMP .GE. 10) THEN
            TMP = TMP - 10
            FLAG = 1
          ELSE
            FLAG = 0
          END IF
C          PRINT *, 'TMP, FLAG', TMP, FLAG
          CALL STRUCT_CREAT(PR, (TMP))
          PR = R.NEXT
          IF (PR1 .NE. 0) PR1 = R1.NEXT
          IF (PR2 .NE. 0) PR2 = R2.NEXT
        END DO
        R.NEXT = 0

C       PRINT LINKED LIST
        PR = PADDED
        PRINT *, R.ITEM
        PR = R.NEXT
        PRINT *, R.ITEM
        PR = R.NEXT
        PRINT *, R.ITEM

      END PROGRAM MAIN


      SUBROUTINE STRUCT_CREAT(PR, NUM)
        STRUCTURE /NODE/
          INTEGER ITEM
          INTEGER NEXT
        END STRUCTURE
        RECORD /NODE/ R
        POINTER (PR, R), (PB, B)

        R.ITEM = NUM
        PB = MALLOC(12)
        R.NEXT = PB
      END SUBROUTINE STRUCT_CREAT
