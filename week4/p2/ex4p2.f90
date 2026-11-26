program ex4p2

! Remove the do loops (except the first double loop) and replace them with Fortran array subobjects.
  implicit none
  integer,parameter :: n=4
  integer :: i,j,b(n),c(n,n),d(n,n)
 
  ! ---------- Do not change these loops 
  do i=1,n
     b(i)=i
     do j=1,n
        c(j,i)=10*i+j
     end do
  end do
  ! ----------

   d = c+1
  !do i=1,n
     !do  j=1,n
        !d(j,i)=c(j,i)+1
     !end do
  !end do


   c(2:n, 2:n)=d(1:n-1, 1:n-1)
  !do j=2, n
     !do i=2, n
        !c(i,j)=d(i-1,j-1)
     !end do
  !end do


   c(1:n:2, 1:n:2)=10*c(1:n:2,1:n,2)
  !do j=1,n,2
     !do i=1,n,2
        !c(i,j)=10*c(i,j)
     !end do
  !end do

  print *, 'answer=',sum(c)

end program ex4p2