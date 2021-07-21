program callingSubroutine
    implicit none

    real :: a, b
    a = 2.0
    b = 3.0

    print *, 'Before calling swap'
    print *, 'a=', a, 'b=', b

    call swap(a, b)
    print *, 'After calling swap'
    print *, 'a=', a, 'b=', b

end program callingSubroutine


subroutine swap(a, b)
    real :: a, b, tmp
    tmp = a
    a = b
    b = tmp
end subroutine swap