! tell the compiler how large integers you want your variables to be able to handle
! the ranges are called KIND
program integerkind
    ! if you do not specify the kind, write:
    ! use iso_fortran_env
    implicit none
    integer, parameter :: ik=selected_int_kind(4)
    ! selected_int_kinda(p,r) returns a kind valye (an integer) of a real type that has:
    ! decimal precision of at least p and decimal exponent range of at least r
    integer, parameter :: rk=selected_real_kind(6,15)
    real(kind=rk) :: x
    integer :: y
    integer(kind=ik) :: i,j,k
    i=1
    x=1.0

    ! this should give an error because kind cannot accomodate it:
    ! k=100000
    !print *,k

    do j=1,10
        i=2*i
        print *,j,i
    end do

    do y=1,64
        x=x*100.0
        print *,y,x
    end do
end program integerkind