program fortrantut
    implicit none

    real :: numbers(5)
    integer :: matrix(3, 3), i, j

    do i = 1, 5
        numbers(i) = i * 2.0
    end do

    do i = 1, 3
        do j = 1, 3
            matrix(i, j) = i + j
        end do
    end do

    do i = 1, 3
        do j = 1, 3
            print *, matrix(i, j)
        end do
    end do

    numbers = (/1.0, 2.0, 3.0, 4.0, 5.0/)
    
    do i = 1, 5
        print *, numbers(i)
    end do

    print *, numbers

    print *, shape(numbers)
    print *, shape(matrix)
end program fortrantut