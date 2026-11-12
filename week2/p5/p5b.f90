program p5b
implicit none
integer, parameter :: rk=4
real(rk) :: x,y,z,w,v

y = epsilon(1.0) + 1.0
z = epsilon(1.0)/2.0 + 1.0
v = 1.0 - epsilon(1.0)
w = 1.0 - epsilon(1.0)/2.0

print*, "addition:", y
print*, "then divided by 2.0:", z
print*, "subtraction:", v
print*, "then divided by 2.0:", w
! Machine epsilon is defined as the smallest positive number that when added to one produces a number that is greater than one.
print*, "machine epsilon of 1.0 and 1.0 are not equal."
end program p5b