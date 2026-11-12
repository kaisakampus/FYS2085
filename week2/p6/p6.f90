program p6
implicit none
integer, parameter:: rk4=4, rk8=8, rk10=10, rk16=16, m=10000000
integer :: n
real(rk4):: a = 0.0_rk4
real(rk8):: b = 0.0_rk8
real(rk10):: c = 0.0_rk10
real(rk16):: d = 0.0_rk16

! harmonic sum H=sum of m: 1+(1/n) -> 1+1/2+1/3+..+1/m
! note 1 tells me to use n = real(n,rk)
! n=1 -> a=0, a=0+1/1
do n=1,m
    a=a+1.0_rk4/real(n,rk4)
    b=b+1.0_rk8/real(n,rk8)
    c=c+1.0_rk10/real(n,rk10)
    d=d+1.0_rk16/real(n,rk16)
end do

print*, a,b,c,d
end program p6