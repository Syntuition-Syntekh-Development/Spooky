def tenbasefour(*b)
  number = b
  return 'Math error' if number.count > 1
  return 'Syntax error' if number.any?(String) == true
  return 'Syntax error' if number.any?(Float) == true
  tu = [] << number[0]
  list = number.each{number << number[0]/=4 while number[0] > 1}.uniq!
  cool = (list + tu).sort
  cool.each.collect{|t|t % 4}.join.to_i
end