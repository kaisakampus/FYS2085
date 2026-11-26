program p1
implicit none
    ! I will still need i for loops.
    integer :: a(1,4), b(3,3), c(4,4)

    ! When i type in 123456789 then i need to do it in 3 rows. Three dim=2 input array slices x(i,N):
    do i = 1, 1
        ! separately looks like this: read *, x(i,1), x(i,2), x(i,3)
        read *, a(i,:)
    end do

    do i = 1, 3
        read *, b(i,:)
    end do

    do i = 1, 4
        read *, c(4,4) 
    end do

! printing part
    ! a array: 3rd and 4th element
    print*, a(1,3,4)
    ! b array: first and last element of first and last row
    print*, b(1,1,3)
    print*, b(3,1,3)
    ! c array: 2nd and 3rd row 2nd and 3rd element
    print*, c(2,2:3)
    print*, c(3,2:3)

end program p1
