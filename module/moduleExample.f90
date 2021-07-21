module constants
    real, parameter, private :: pi = 3.1415926536, e = 2.7182818285
contains
    subroutine show_constants()
        print *, pi, e
    end subroutine show_constants

    function ePower(x) result(res)
        real :: x, res
        res = e ** x
    end function ePower

    function areaCircle(r) result(res)
        real :: r, res
        res = pi * r ** 2
    end function areaCircle
end module

program moduleExample
    use constants
    implicit none

    real :: ep, cir
    ep = ePower(2.0)
    cir = areaCircle(2.0)

    call show_constants()
    ! print *, pi, e ! error
    print *, ep
    print *, cir
end program moduleExample