program ex4p3
  implicit none
  integer,parameter :: n=5
  real :: a(n,n)
  integer :: i
  ! --- For the RNG
  integer :: s
  integer,allocatable :: seed(:)

  ! ---- Start of RNG setup
  ! Set up the seed
  call random_seed(size=s)
  allocate(seed(s))
  seed=1277345
  call random_seed(put=seed)
  ! Fill array a with random numbers
  ! in the interval [0,1]
  call random_number(a)
  ! ---- End of RNG setup

  ! print a to see what random numbers there are
   print*, a(i,:)

  ! Your additions come here: where-elsewhere construct
  ! elements x<0.5 -> 0
  ! if x in [0.5, 0.75] then: a=0.75
  ! x > 0.75 -> x=x
  ! basically x=[0.5, 0.75] -> max(a,0.75)

  where (a<0.5)
    a=0
  elsewhere
    a=max(a, 0.75)
  end where

  ! after sorting the result is
  print*, a(i,:)
end program ex4p3
