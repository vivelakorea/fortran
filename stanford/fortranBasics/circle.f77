PROGRAM circle
real r, area
parameter (pi=3.141592)
C this program is bla bla
C bla bla
WRITE (*, *) 'Give radius r:'
READ (*, *) r
area = pi * r * r
WRITE (*, *), 'Area = ', area
STOP
END
