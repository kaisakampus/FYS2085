program p1
    implicit none

    ! Instructions had a note that using constants for infinity 1.0/0.0 is not effective and that I should use variables instead.
    ! The variables will be assigned vales 1.0/0.0 and -1.0/0.0. The variables will be used in the divisions.
    real :: nominator, denominator, infinity, neg_infinity, first, second

    nominator = 1.0
    denominator = 0.0

    infinity = nominator/denominator
    neg_infinity = -nominator/denominator

    ! infinity x infinity
    first = infinity * infinity
    ! infinity x  negative infinity
    second = infinity * neg_infinity

    ! results
    print*, "positive:", infinity, "negative:", neg_infinity, "positive x positive:", first, "positive x negative:", second
end program p1