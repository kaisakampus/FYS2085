program expression_equivalence

  implicit none
  integer,parameter :: rk=4
  real(rk) :: x = 1.00002
  real(rk) :: y = 1.00001
  real(rk) :: t1,t2,t3,t4,t5

  print *,x
  print *,y
  
  t1 = x-y
  t2 = x+y
  print *
  print *,t1
  print *,t2

  t3 = t1*t2
  t4 = x**2-y**2
  t5 = x*x-y*y

  print *
  print *,t3
  print *,t4
  print *,t5
  
end program expression_equivalence

