program printPi
    implicit none
    
    real, parameter :: pi = 3.141592653589793238
    
    print "(f8.4)", pi
    print "(f8.5)", pi
    print "(f8.6)", pi
    print "(f9.1)", pi
    print "(f9.2)", pi
    print "(f9.3)", pi
    print "(e16.5)", pi / 100.0

end program printPi