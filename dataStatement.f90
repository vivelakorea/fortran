program dataStatement
    implicit none

    integer :: a(5), b(3,3), i, j
    logical :: c(10)
    
    data a /7, 8, 9, 10, 11/

    data b(1, :) /1, 1, 1/
    data b(2, :) /2, 2, 2/
    data b(3, :) /3, 3, 3/
    
    data (c(i), i = 1, 10, 2) /.true., .true., .true., .true., .true./
    data (c(i), i = 2, 10, 2) /.false., .false., .false., .true., .true./

    print *, 'The a array'
    do i = 1, 5
        print *, 'a(', i, ') = ', a(i)
    end do
    
    do i = 1, 3
        do j = 1, 3
            print *, 'b(', i, ',', j, ')', b(i, j)
        end do
    end do

    do i = 1, 5
        print *, 'c(', i, ') = ', c(i)
    end do

end program dataStatement