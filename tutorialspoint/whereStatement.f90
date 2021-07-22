program whereStatement
    implicit none
    
    integer :: i, j, n, m
    integer, dimension(:, :), allocatable :: matrix

    read *, n, m
    allocate(matrix(n, m))
    
    do i = 1, n
        do j = 1, m
            matrix(i, j) = i - j
        end do
    end do

    do i = lbound(matrix, 1), ubound(matrix, 1)
        write (*, *) (matrix(i, j), j = lbound(matrix, 2), ubound(matrix, 2))
    end do

    print *

    where (matrix > 0)
        matrix = 100
    elsewhere (matrix < 0)
        matrix = -100
    end where

    do i = lbound(matrix, 1), ubound(matrix, 1)
        write (*, *) (matrix(i, j), j = lbound(matrix, 2), ubound(matrix, 2))
    end do
    
end program whereStatement