      PROGRAM SHIELD
    
      REAL THICK, LIMCOL
      INTEGER SEED, COUNT, N, FORW, OLDDIR, COLLIS, DIR

      PRINT *, 'ENTER THICKNESS, LIMIT ON THE NUMBER OF COLLISIONS, AND
     & NUMBER OF PARTICLES'
      READ *, THICK, LIMCOL, N
      PRINT *, 'ENTER RANDOM SEED'
      READ *, SEED

      CALL SRAND(SEED)

      COUNT = 0
      DO 10 I = 1, N
        FORW = 1
        OLDDIR = 0
        COLLIS = 0
        DO WHILE ((FORW .LT. THICK) .AND. (FORW .GT. 0) .AND. (COLLIS 
     &  .LT. LIMCOL))
          DIR = 1 + INT(RAND() * 4)
          IF (DIR .NE. OLDDIR) THEN
            COLLIS = COLLIS + 1
            OLDDIR = DIR
          END IF
          IF (DIR .EQ. 1) FORW = FORW + 1
          IF (DIR .EQ. 2) FORW = FORW - 1
          IF (FORW .EQ. THICK) COUNT = COUNT + 1
        END DO
10    CONTINUE

      PRINT *, COUNT * 100.0 / REAL(N), '% OF THE PARTICLES ESCAPED.'

      END PROGRAM SHIELD