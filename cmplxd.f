PROGRAM CMPLXD
	IMPLICIT COMPLEX(X)
	PARAMETER (PI = 3.141592653589793, XJ = (0, 1))
	DO 1, I = 0, 7
		X = EXP(XJ * I * PI / 4)
		IF (AIMAG(X).LT.0) THEN
    		PRINT 2, 'e**(j*', I, '*pi/4) = ', REAL(X), ' - j',-AIMAG(X)
		ELSE
    		PRINT 2, 'e**(j*', I, '*pi/4) = ', REAL(X), ' + j', AIMAG(X)
		END IF
2   	FORMAT (A, I1, A, F10.7, A, F9.7)
1   	CONTINUE
	STOP
END