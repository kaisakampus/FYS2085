program p5
    implicit none
    ! x in cosh values are [0,1] and i need to find the order of magnitude of the relative difference between L and R
    ! where L=cosh(x), R=(exp(x)+exp(-x))/2
    real::i,x,L,R, diff, magdiff
    print*, "L=cosh(x) and R=(exp(x)+exp(-x))/2"
    print*, "the order of magnitude of the relative difference between L and R is"
    do i=0.0,10.0
        x=i/10.0
        L=cosh(x)
        R=(exp(x)+exp(-x))/2
        diff=(L-R)/R
        magdiff=log10(abs(diff))
        print*, magdiff, "at x=", x
    end do
end program p5