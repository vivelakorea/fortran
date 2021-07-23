
      INTEGER FUNCTION FAC(N)
          INTEGER N, I
          FAC = 1
C         START OF LOOP
          DO 100 I = 1, N
              FAC = FAC * I
 100      CONTINUE
C         END OF LOOP
          RETURN
      END
