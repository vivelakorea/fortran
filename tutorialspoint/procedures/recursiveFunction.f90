program recursiveFunction
    
    integer :: m = 15
    integer :: fac, fib
    fac = myFactorial(m)
    fib = myFibonacci(m)
    print *, fac, fib

end program


recursive function myFactorial(n) result(res)

    integer, intent(in) :: n
    integer :: res

    select case (n)
    case (0:1)
        res = 1
    case default
        res = n * myFactorial(n - 1)
    end select

end function myFactorial


recursive function myFibonacci(n) result(res)
    
    integer, intent(in) :: n
    integer :: res
    select case (n)
    case (0:1)
        res = n
    case (2)
        res = 1
    case default
        res = myFibonacci(n - 1) + myFibonacci(n - 2)
    end select

end function myFibonacci
