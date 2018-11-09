program dosum
  real(8)::x, thesum = 0.
  print *, 'How many terms?'; read *, n
  do i = 2, n
x = real(i)
     thesum = thesum + sin(sin(x))/(x*log(x))
  end do
  print *, thesum
end program dosum
