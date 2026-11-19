program p6b
    implicit none
    ! find the weekly averages of the temperature.
    ! first week starts from first data point in the file (7 points for every week).
    ! plot original data (1) and the weekly averages (2).
    integer :: x, i, NOweeks, first, last
    real, allocatable :: t(:), weekly(:) ! this time 2 arrays

    ! this part is the same as p6a
    open(10, file="Kumpula_daily_temperature.dat")
    read(10, *) x

    allocate(t(x))
    do i = 1, x
        read(10, *) t(i)
    end do

    ! closing the file
    close(10)

    ! the no of data points is divisible by 7
    NOweeks = x / 7

    ! array where every week has one slot for its average temperature
    allocate(weekly(NOweeks))

    ! compute weekly average! I messed this up so I let AI fix this:
    do i = 1, NOweeks
    ! t(7*i-6:7*i) = 7 data points for week i
        first = 7*i-6
        last = 7*i
        weekly(i) = sum(t(first:last))/7.0
    end do

    open(11, file='weeklyavg.txt')
    do i = 1, NOweeks
        write(11, *) weekly(i)
    end do
    close(11)
end program p6b