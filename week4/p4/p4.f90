program p4
implicit none
! print sizes of all files in current folder p4: p4.f90
!inquire statement is used to get the file sizes: inquire(file='file.dat',size=sz)
integer :: sz
inquire(file"p4.f90",size=sz)
print*, "p4.f90",sz
end program p4