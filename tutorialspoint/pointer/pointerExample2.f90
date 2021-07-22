program pointerExample2
    implicit none

    integer, pointer :: a, b
    integer, target :: t
    integer :: n

    t = 1
    a => t
    print *, a, b, t

    t = 2
    b => t
    print *, a, b, t

    b = 3
    print *, a, b, t

    n = a + b
    print *, a, b, t, n

end program pointerExample2