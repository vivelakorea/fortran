      PROGRAM MAIN

        INTEGER F, I
        EXTERNAL FBNCI
        
        DO 10 I = 1, 40
          CALL FBNCI(I, F, FBNCI)
          PRINT *, I, 'TH FIBONACCI NUMBER IS : ', F
10      CONTINUE

      END PROGRAM MAIN



      SUBROUTINE FBNCI(N, F, DUMSUB)

        INTEGER N, F, F1, F2
        EXTERNAL DUMSUB

        IF ((N .EQ. 0) .OR. (N .EQ. 1)) THEN
          F = 1
        ELSE
          CALL DUMSUB(N-1, F1, DUMSUB)
          CALL DUMSUB(N-2, F2, DUMSUB)
          F = F1 + F2
        END IF

      END SUBROUTINE FBNCI