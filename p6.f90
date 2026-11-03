program p6
implicit none
    ! values for function f(t) in [-3,3]
    !f(t)={3t^2+5 t<0, -3t^2+5 t>=0}
integer::i
real::t,f

    ! another do loop
do i=-3,3
    t=real(i)
    if (t<0.0) then
        f = 3.0*t**2 + 5.0
    else
        f = -3.0*t**2 + 5.0
    end if
    print *, t,f
end do

end program p6