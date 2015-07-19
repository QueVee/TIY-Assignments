
  def fact(n)
   if n==0
 	1
   else
 	n * fact(n-1)
   end
  end


puts fact(5) => 120
puts fact(10) => 3628800

