program ex4p2
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


  do i=1,n
     do  j=1,n
        d(j,i)=c(j,i)+1
     end do
  end do

  do j=2, n
     do i=2, n
        c(i,j)=d(i-1,j-1)
     end do
  end do

  do j=1,n,2
     do i=1,n,2
        c(i,j)=10*c(i,j)
     end do
  end do
    
  print *, 'answer=',sum(c)

end program ex4p2
