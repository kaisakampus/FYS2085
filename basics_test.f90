program simple
    ! this is a comment

    ! definitions and declarations:
    implicit none
    real :: x,y
    
    ! executable statements:
    print *, 'Give x!'
    read *, x
    y=exp(-2*x**2)
    print *, 'y = ',y
end program simple
