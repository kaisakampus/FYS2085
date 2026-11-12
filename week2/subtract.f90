program subtract
  implicit none
  integer,parameter :: rk=8
  real(rk) :: a = 1.00002_rk
  real(rk) :: b = 1.00001_rk
  real(rk) :: c
  
  c = a-b
  print *,a
  print *,b
  print *,c
  
end program subtract
