
      PROGRAM GRID
          INTEGER CELL(30,30), FUTURE(30,30), I, J, NEBR, N, T
          LOGICAL FLAG
          COMMON /GLOB/ CELL, FUTURE, N

C         SIZE OF GRID
          N = 30

          DO 10 I = 1, N
              DO 20 J = 1, N
                  CELL(I,J) = 0
                  FUTURE(I,J) = 0
20            CONTINUE
10        CONTINUE

C         INITIAL CONFIGURATION

          CELL(13, 15) = 1
          CELL(15, 14) = 1
          CELL(15, 16) = 1
          CELL(16, 15) = 1

          DO 30 I = 1, N
              WRITE(*, 1000) (CELL(I, J), J=1,N)
30        CONTINUE

          WRITE(*,*)

C         STEP ITERATION
          T = TIME()
          FLAG = .TRUE.
          I = 1
35        IF ( FLAG ) THEN
              
              IF ( I .EQ. 100 ) THEN
                  FLAG = .FALSE.
              ENDIF

              IF ( TIME() .EQ. T + I ) THEN
                  CALL STEP()
                  I = I + 1
              ENDIF
 
          GOTO 35
          ENDIF


1000      FORMAT (30I1)
          STOP
      END 


      SUBROUTINE STEP()
          INTEGER CELL(30, 30), FUTURE(30, 30), I, J, NEBR, N
          COMMON /GLOB/ CELL, FUTURE, N
C         STEP

          DO 100 I = 1, N
              DO 110 J = 1, N


C                 FOR EACH OF THE 8 NEIGHBORS, COUNT LIVES
                  NEBR = 0

C                 LEFT
                  IF ( J .GT. 1 ) THEN
                      IF ( CELL(I, J-1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 UP
                  IF ( I .GT. 1 ) THEN
                      IF ( CELL(I-1, J) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 RIGHT
                  IF ( J .LT. N ) THEN
                      IF ( CELL(I, J+1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 DOWN
                  IF ( I .LT. N ) THEN
                      IF ( CELL(I+1, J) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 LEFT UP
                  IF ( ( I .GT. 1 ) .AND. ( J .GT. 1 ) ) THEN
                      IF ( CELL(I-1, J-1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 RIGHT UP
                  IF ( ( I .GT. 1 ) .AND. ( J .LT. N ) ) THEN
                      IF ( CELL(I-1, J+1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 LEFT DOWN
                  IF ( ( I .LT. N ) .AND. ( J .GT. 1 ) ) THEN
                      IF ( CELL(I+1, J-1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF

C                 RIGHT DOWN
                  IF ( ( I .LT. N ) .AND. ( J .LT. N ) ) THEN
                      IF ( CELL(I+1, J+1) .EQ. 1 ) THEN
                          NEBR = NEBR + 1
                      END IF
                  END IF
                 

                  
                  FUTURE(I, J) = CELL(I, J)
C                 IF SQUARE IS ALIVE AND NEIGHBOR IS TOO MANY OR FEW, DIE
                  IF ( CELL(I, J) .EQ. 1 ) THEN
                      IF (.NOT. ( ( NEBR .EQ. 2 ) .OR. ( NEBR .EQ. 3 )
     +                 )) THEN
                          FUTURE(I, J) = 0
                      END IF    
C                 IF SQUARE IS DEAD AND THERE IS 3 NEIGHBORS, REVIVE
                  ELSE
                      IF ( NEBR .EQ. 3 ) THEN
                          FUTURE(I, J) = 1
                      END IF
                  END IF

110           CONTINUE
100       CONTINUE
          
          DO 60 I = 1, N
              DO 70 J = 1, N
                  CELL(I, J) = FUTURE(I, J)
70            CONTINUE
60        CONTINUE
          



          DO 90 I = 1, N
              WRITE(*, 1010) (CELL(I, J), J = 1, N)
90        CONTINUE
          WRITE(*, *)
1010      FORMAT (30I1)
      END


