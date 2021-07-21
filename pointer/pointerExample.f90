program pointerExample
    implicit none
    integer, pointer :: p1
    integer, target :: t1
    integer, target :: t2

    p1 => t1
    p1 = 1
    print *, p1, t1

    p1 = p1 + 4
    print *, p1, t1

    t1 = t1 + 5
    print *, p1, t1

    nullify(p1)
    print *, t1

    p1 => t2
    print *, associated(p1)         ! T
    print *, associated(p1, t1)     ! F
    print *, associated(p1, t2)     ! T

    print *, p1, t2

    p1 = 10
    print *, p1, t2


end program pointerExample