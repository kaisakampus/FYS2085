program p1
use iso_fortran_env, only : int32
implicit none
integer(int32):: i,x

print*, "enter integer value x"
read (*,*) x

do i=2,x
    print *, i**2
end do

end program p1