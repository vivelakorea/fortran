program dynamicArray
    implicit none
    
    integer, dimension(:, :), allocatable :: matrix
    integer :: i, j, n, m

    read *, n, m

    allocate(matrix(n, m))
    do i = 1, n
        do j = 1, m
            matrix(i, j) = i * j
        end do
    end do

    do i = 1, n
        do j = 1, m
            matrix(i, j) = i * j
        end do
    end do

    do i = 1, n
        do j = 1, m
            print *, i, j, matrix(i, j)
        end do
    end do


end program dynamicArray