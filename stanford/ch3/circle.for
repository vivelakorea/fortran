      PROGRAM CIRCLE
          REAL R, AREA, PI
          PARAMETER (PI = 3.141592)
          
C THIS PROGRAM READS A REAL NUMBER R AND PRINTS
C THE AREA OF A CIRCLE WITH RADIUS R.
          
          WRITE (*,*) 'GIVE RADIUS R:'
          READ (*,*) R
          AREA = PI * R * R
          WRITE (*,*) 'AREA = ', AREA

          STOP
      END
