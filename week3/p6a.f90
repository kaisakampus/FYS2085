program p6a
    implicit none
    integer :: n
    real, allocatable :: t(:)
    real :: mean

    open(unit=10, file='Kumpula_daily_temperature.dat', status='old')

    read(10, *) n          ! 1st line: number of data points
    allocate(t(n))         ! now that n is known, create the array
    read(10, *) t          ! read all the temperatures into the array
    close(10)

    mean = sum(t) / real(n)

    print *, 'Number of data points = ', n
    print *, 'Mean temperature      = ', mean

    deallocate(t)
end program p6a