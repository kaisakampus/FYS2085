program p5
    implicit none
    ! x in cosh values are [0,1] and i need to find the order of magnitude of the relative difference between L and R
    ! where L=cosh(x), R=(exp(x)+exp(-x))/2
    real::x,L,R, diff, magdiff
    
    ! i initially had real::i but then got a warning:
    ! Warning: Deleted feature: Start expression in DO loop at (1) must be integer
    ! so i had to adjust i
    integer::i

    ! output pt 1
    print*, "L=cosh(x) and R=(exp(x)+exp(-x))/2"
    print*, "the order of magnitude of the relative difference between L and R is"
    
    ! loop will have 11 values, i counts in 0
    do i=0,10
    ! finding real value of x instead of integer value of i
        x=i/10.0
        L=cosh(x)
        R=(exp(x)+exp(-x))/2

    ! difference between L and R relative to R
        diff=(L-R)/R

    ! order of magnitude of that difference
        magdiff=log10(abs(diff))

    ! output pt 2
        print*, magdiff, "at x=", x
    end do

end program p5