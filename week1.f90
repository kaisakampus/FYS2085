! Michigan university https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/intro.html
! Final project can be done in pairs but each student submits their own report.
! lines from the Introduction slides
program hello
    implicit none
    real :: x
    integer :: i

    print *,'Hello'
 
    do i=1,10000
        x=0.001*i
        print *,x,sin(x**2)
    end do
end program hello

!import numpy as np
!import matplotlib.pyplot as plt
!d=np.loadtxt(‘out.dat’)
!plt.plot(d[:,0],d[:,1])