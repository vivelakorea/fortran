      PROGRAM PRNT

        INTEGER N1, N2, N3, N4
        
        N1 = 749
        N2 = 3
        N3 = 8
        N4 = 1

        PRINT '(I7)', N1
        PRINT '(''X''I6)', 100*N2 + 10*N3 + N4
        PRINT '(A)', ' ------'
        PRINT '(I7)', N1 * N4
        PRINT '(I6X)', N1 * N3
        PRINT '(I5XX)', N1 * N2
        PRINT '(A)', ' ------'
        PRINT '(XI6)', N1 * (100*N2 + 10*N3 + N4)
      END PROGRAM PRNT