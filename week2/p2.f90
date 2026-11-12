program p2
implicit none
integer:: i, x

print*, "i=0,5"
print*, "values of i:"
x=0
do i=0,5
    x= x + 1
    print*, i
end do
print*, "iteration count:", x
print*, "value of final i:", i

print*, "i=5,1,-1"
print*, "values of i:"
x=0
do i=5,1,-1
    x= x + 1
    print*, i
end do
print*, "iteration count:", x
print*, "value of the final i:", i

print*, "i=10,1,-2"
print*, "values of i:"
x=0
do i=10,1,-2
    x= x + 1
    print*, i
end do
print*, "iteration count:", x
print*, "value of the final i:", i

print*, "i=0,30,7"
print*, "values of i:"
x=0
do i=0,30,7
    x= x + 1
    print*, i
end do
print*, "iteration count:", x
print*, "value of the final i:", i

end program p2