program numbers
  implicit none
  integer,parameter :: rk=selected_real_kind(r=200)
  integer :: a=2, b=3
  real :: x, y

  x=a
  y=b
  print *,(a+b)/3
  print *,(x+y)/3.0
  print *,(x+y)/3
  print *,(x+y)/3.0_rk
  
end program numbers
