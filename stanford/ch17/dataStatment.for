
      PROGRAM DATASTATEMENT
          INTEGER M, N
          REAL X, Y
          REAL A(5, 6)
          INTEGER V(5)
          REAL B(2, 2)

          DATA M, N /10, 20/, X, Y /2 * 2.5/
          DATA A /30 * 0./

          WRITE (*, *) M, N, X, Y
          WRITE (*, *) A
          DATA A(1,1) /12.5/, A(2,1)/-33.3/, A(2,2)/1.0/
          WRITE (*, *) A
          DATA V /10, 20, 30, 40, 50/, B /1.11, 2.22, 3.33, 4.44/
          WRITE (*, *) V, B(1,1), B(1,2), B(2,1) ,B(2,2)

          STOP
      END
