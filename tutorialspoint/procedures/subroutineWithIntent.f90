program subroutineWithIntent
    implicit none

    real :: x, y, z, disc

    x = 1.0
    y = 5.0
    z = 2.0

    call intent_example(x, y, z, disc)

    print *, 'The value of the discriminant is'
    print *, disc

end program subroutineWithIntent


subroutine intent_example(a, b, c, d)
    real, intent(in) :: a
    real, intent(in) :: b
    real, intent(in) :: c
    
    real, intent(out) :: d
    

    d = b * b - 4.0 * a * c 

end subroutine intent_example