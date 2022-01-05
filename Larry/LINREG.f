        PROGRAM LINREG

        INTEGER COUNT
        DOUBLE PRECISION X, Y, XYSUM, XSUM, YSUM, YMEAN, X2SUM, XMEAN, 
     &   SLOPE, INTRCP
        
        COUNT = 0
        XYSUM = 0.
        XSUM = 0.
        YSUM = 0.
        X2SUM = 0.

        READ *, X, Y
        DO WHILE ( (X .NE. -999) .AND. (Y .NE. -999) )
          COUNT = COUNT + 1
          XSUM = XSUM + X
          YSUM = YSUM + Y
          X2SUM = X2SUM + X ** 2
          XYSUM = XYSUM + X * Y
          PRINT *, X2SUM, XYSUM
          READ *, X, Y
        END DO

        PRINT *, DBLE(COUNT)
        YMEAN = YSUM / DBLE(COUNT)
        XMEAN = XSUM / DBLE(COUNT)
        SLOPE = (XYSUM - XSUM * YMEAN) / (X2SUM - XSUM * XMEAN)
        INTRCP = YMEAN - SLOPE * XMEAN

        PRINT *, SLOPE, INTRCP
        

        END PROGRAM LINREG