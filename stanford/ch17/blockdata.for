
      PROGRAM BLOCKDATA
          INTEGER NMAX
          PARAMETER (NMAX=20)
          REAL V(NMAX), ALPHA, BETA
          COMMON /VECTOR/ V, ALPHA, BETA

          WRITE (*, *) V, ALPHA, BETA

          STOP
      END

      BLOCK DATA
          INTEGER NMAX
          PARAMETER (NMAX=20)
          REAL V(NMAX), ALPHA, BETA
          COMMON /VECTOR/ V, ALPHA, BETA
          DATA V /20 * 100.0/, ALPHA /3.14/, BETA /2.71/
      END
