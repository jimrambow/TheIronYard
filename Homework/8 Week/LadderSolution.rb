def ladder (n)
  case n
  when 1
    return 1
  when 2
    return 2
  else
    return ladder(n-1)+ladder(n-2)
  end
end
 
puts "how big is your ladder?"
input = gets.chomp.to_i
puts ladder input