program arracc
  implicit none
  integer,parameter :: ik=8,rk=8
  integer,parameter :: MAXI=100000000
  real(rk) :: y,t1,t2,cpu1,cpu2,rmaxi
  integer(ik) :: a(MAXI),i,j,k,s
  
  rmaxi=real(MAXI,rk)
  a=0

  ! --- Loop 1 ---
  call cpu_time(t1)
  do i=1,MAXI
     j=int(rmaxi*rng())
     a(j)=j
  enddo
  call cpu_time(t2)
  cpu1=t2-t1
  print *,'cpu1 ',cpu1,maxval(a)

  a=0

  ! --- Loop 2 ---
  call cpu_time(t1)
  do i=1,MAXI
     j=int(rmaxi*rng())
     a(i)=j
  enddo
  call cpu_time(t2)
  cpu2=t2-t1
  print *,'cpu2 ',cpu2,maxval(a)

  print *,'cpu1/cpu2 ',cpu1/cpu2

  stop

contains

  !-----------------------------------------------------!
  ! Nothing interesting here (regarding the solution of !
  ! the exercise problem).                              !
  !                                                     !
  ! Function generates double precision random numbers  !
  ! uniformly distributed in interval [0,1).            !
  !-----------------------------------------------------!
  
  real(rk) function rng()
    implicit none
    integer(ik) :: k1,ix=873421
    integer(ik),parameter :: ii=127773,jj=2147483647
    integer(ik),parameter :: i1=16807,i2=2836
    real(rk),parameter :: p=4.656612875245797e-10

    k1=ix/ii
    ix=i1*(ix-k1*ii)-k1*i2
    if (ix<0) ix=ix+jj
    rng=ix*p

    return
  end function rng
  
end program arracc


