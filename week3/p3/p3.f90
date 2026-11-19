program p3
    implicit none
    ! rank = # of dimensions needed to refer to one element.
    ! max rank in f90 is 7.
    ! rank 7 integer array is supposed to have size 2 in each direction:
    integer, dimension(2,2,2,2,2,2,2) :: a

    print *, "The rank is 7."
    ! size(a)
    print *, "size(a) is", size(a)
    ! shape(a)
    print *, "shape(a) is", shape(a)
end program p3