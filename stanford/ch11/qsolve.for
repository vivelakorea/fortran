
      SUBROUTINE QSOLVE(A, B, C, R)
          INTEGER A, B, C
          DOUBLE PRECISION R(2)
          IF ((B ** 2 - 4 * A * C) .LT. 0) THEN
              WRITE (*,*) 'WARNING: COMPLEX ROOTS!'
              STOP
          ENDIF

          R(1) = (-DBLE(B) + SQRT(DBLE(B) ** 2 - 4 * DBLE(A) * DBLE(C)))
     +           / (2 * DBLE(A))

          R(2) = (-DBLE(B) - SQRT(DBLE(B) ** 2 - 4 * DBLE(A) * DBLE(C)))
     +           / (2 * DBLE(A))
         RETURN
      END

