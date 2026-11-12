program iso_fortran_env_kinds
  use iso_fortran_env, only : int8,int16,int32,int64,real32,real64,real128
  implicit none

  integer(int32) :: i
  real(real64) :: x

  read(5,*) i,x
  print *,i,x

end program iso_fortran_env_kinds
