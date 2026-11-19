program p2
    implicit none
    ! take a square root of a real variable (1) and dividing zero by zero (2). NaN is never equal to itself?
    real :: first, second, x, y

    first  = -1.0
    second =  0.0

    ! (1)
    x = sqrt(first)
    print*, "square root of a real variable:", x
    ! (2)
    y = second / second
    print*, "division 0.0/0.0:", y

    ! the exercise had this part to check whether NaN is equal to itself:
    print*, "NaN is true when x is not equal to itself x/=x. Checking both (1) and (2):"
    
    ! (1) check
    if (x/=x) then
        print *, "we have a NaN"
    end if

    ! (2) check
    if (y/=y) then
        print *, "we have a NaN"
    end if
end program p2