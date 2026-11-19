program p6a
    implicit none
    ! compute the mean temperature of this time period. first read the data into an array!
    integer :: x, i
    real, allocatable :: t(:) ! temperature
    real :: tot, mean

! first line is the number of data points, and the rest are the data points.
! open(u, file="name")
    open(10, file="Kumpula_daily_temperature.dat")
    read(10, *) x ! counts the number of data points
    ! allocatable array is used create an array
    allocate(t(x))

    do i = 1, x ! loop going through the data points
        read(10, *) t(i) ! sorting each data point into the array in a growing order
    end do

    ! closing the file
    close(10)

    ! adding all the temperatures together
    tot = 0.0
    do i = 1, x
        tot = tot + t(i)
    end do

    ! computing the mean temperature
    mean = tot/x
    print *,"the mean temperature is", mean
end program p6a