program p5
implicit none
! largest number and smallest positive number of floating point kinds
! slide 16 has huge(x) and tiny(x) functions
integer, parameter :: rk4 = 4, rk8 = 8, rk10 = 10, rk16 = 16

! defining variables for each kind
real(rk4) :: a
real(rk8) :: b
real(rk10) :: c
real(rk16) :: d

print*,"largest number of real(4) is", huge(a)
print*,"largest number of real(8) is", huge(b)
print*,"largest number of real(10) is", huge(c)
print*,"largest number of real(16) is", huge(d)

print*,"smallest positive number of real(4) is", tiny(a)
print*,"smallest positive number of real(8) is", tiny(b)
print*,"smallest positive number of real(10) is", tiny(c)
print*,"smallest positive number of real(16) is", tiny(d)

end program p5