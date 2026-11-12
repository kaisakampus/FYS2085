program testintkind 
  implicit none 
  integer :: i,ki
  do i=1,50 
     ki=selected_real_kind(i,20) 
     print *,i,ki
  end do
end program testintkind
