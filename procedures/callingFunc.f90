program calling_func
    real :: a
    a = areaOfCircle(2.0)

    print *, "The area of circle with radius 2", a

end program calling_func


function areaOfCircle(r)
    implicit none
    real :: r, areaOfCircle, pi
    pi = 4 * atan(1.0)
    areaOfCircle = (r ** 2) * pi ! return without termination
    print *, 'test'
end function areaOfCircle