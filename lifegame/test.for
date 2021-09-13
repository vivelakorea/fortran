
      PROGRAM TEST
C          IF (.NOT. 1 .EQ. 2) THEN
C              WRITE(*,*) 'HELLO'
C          END IF
           CALL STEP()
           CALL STEP()
           CALL STEP()

          STOP
      END

      SUBROUTINE STEP()
          WRITE(*, *) 'HELLO'
      END
