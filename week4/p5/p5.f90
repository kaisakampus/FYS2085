program p5
implicit none
! AI version
  real(8) :: a, b, h, s, x, exact
  integer :: n, i
  character(len=20) :: arg

  a = 0.0d0
  b = 4.0d0

  call get_command_argument(1, arg)
  read (arg, *) n

  h = (b - a) / n

  s = 0.5d0 * (sin(a)**2 + sin(b)**2)
  do i = 1, n-1
     x = a + i*h
     s = s + sin(x)**2
  end do
  s = s * h

  exact = 0.25d0 * (2*b - sin(2*b)) - 0.25d0 * (2*a - sin(2*a))

  print *, n, s, abs(s - exact)
end program p5