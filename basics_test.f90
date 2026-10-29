! program name:
program simple
    ! this is a comment

    ! definitions and declarations:
    implicit none
    ! THE RED VARIABLES (expressions) ARE CALLED CHARACTERS:
    ! real means single precision floating point number
    real :: x,y,z,w,a
    integer :: i,j,l
    ! :: is optional actually
    real :: m,n=1.0,r
    ! complex variable (real, imaginary)
    complex :: c1,c2= (1.0,2.0)
    ! b is either true or false:
    logical :: b=.true.
    ! (N) is length of the string:
    character(20) :: k,g
    character(40):: c,d
    ! this is an array:
    integer :: o(10,100,20,40)
    real :: s(1:10,-200:200,1:2)

    ! after defining variables, assign values to them:
    j=1
    c=2.0
    a=1.0

    i=j+1
    y=sin(x**2)
    x=x**x
    i=x
    y=j
    c1=2*c2
    print *,j,x,i,y,c1,c2

    ! executable statements:
    print *, 'Give w!'
    ! when you type input in the terminal, it will be stored in x:
    read *, w
    ! then it computes z:
    z=exp(-2*w**2)
    ! prints the output z to the terminal:
    print *, 'z = ',z
    ! STOP statement is optional

    ! containsis used when you want to do other functions in the same file
    if (a>0) then
        if (w<0) then
            print *,'yes'
        else
            print *,'no'
        end if
    end if

    ! not sure what this part does, nested loop?
    ! do integer_variable=init, final, step
    do i=1,10
    ! CYCLE within do interrups the current iteration and starts immediately the next one
        do j=1,10
    ! instead of another statement you can also put EXIT here:
            l=10*i+j
    ! this will still apply though:
        end do
    end do

    ! multiple things can be printed in one line if you put , or &
    ! same applies for other statements besides print: x=1; y=2; print *,x,y
    print *, 'Testing 1' & ,x,y
    PRINT *, 'Testing 2' & ,x,y
    ! fun fact: FORTRAN IS CASE INSENSITIVE!

    ! trim removes the trailing spaces of a character string
    ! str3= str1//str2 or str3=trim(str1)//trim(str2)
    ! example on this:
    k='aaaaa'
    g='bbbbb'
    c=k//g
    d=trim(k)//trim(g)
    print *,'*',k,'*'
    print *,'*',g,'*'
    print *,'*',c,'*'
    print *,'*',d,'*'

end program simple