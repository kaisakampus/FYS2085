program p3
    implicit none
    ! i do not want the numbers to be rounded
    real :: v1, v10, v100

    ! velocity v when ball hits ground from height h
    ! gravitational acceleration g is rounded
    v1=sqrt(2*9.8*1)
    v10=sqrt(2*9.8*10)
    v100=sqrt(2*9.8*100)

    ! output
    print *, "The ball has a"
    print *, "velocity at height 1 meters:", v1, "m/s"
    print *, "velocity at height 10 meters:", v10, "m/s"
    print *, "velocity at height 100 meters:", v100, "m/s"
end program p3