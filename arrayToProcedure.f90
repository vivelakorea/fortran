program arrayToProcedure
    implicit none

    integer, dimension(5) :: myArray

    call fillArray(myArray)
    call printArray(myArray)

end program arrayToProcedure



subroutine fillArray (a)
    implicit none

    integer, dimension(5), intent(out) :: a
    integer :: i
    do i = 1, 5
        a(i) = i
    end do
end subroutine fillArray



subroutine printArray (a)
    implicit none

    integer, dimension(5), intent(out) :: a
    integer :: i
    do i = 1, 5
        print *, a(i)
    end do
end subroutine printArray