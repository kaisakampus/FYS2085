program p4
    implicit none
    ! I will still need i for loops.
    integer :: x(3,3), i, rowtotal(3), columntot(3)

    ! When i type in 123456789 then i need to do it in 3 rows. Three dim=2 input array slices x(i,N):
    ! I asked AI what an array slice is!
    do i = 1, 3
        ! separately looks like this: read *, x(i,1), x(i,2), x(i,3)
        read *, x(i,:)
    end do

    ! Array slices and sum function to get the 4th row and column (aka the sums):
    rowtotal=sum(x, dim=2) ! dim=2 is x, sum for every row
    columntot=sum(x, dim=1) ! dim=1 is y, sum for every column

    ! Results row by row, the last row has to be the sum of each column. Should look like 4x4:
    do i = 1, 3
        print*, x(i,:), rowtotal(i)
    end do
    print*, columntot
end program p4