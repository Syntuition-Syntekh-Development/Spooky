def wobble(b)
  acodon = b.upcase.chars.reject{|w| w !="C" and w != "U" and w != "A" and w != "G" and w != "I"}
  return "only triplets codon allowed" if acodon.count > 3 or acodon.count < 3

  if acodon.last == "C" or  acodon.last == "A"
    base = {:A => 'U', :G => 'C', :U => 'A', :C =>'G'}
    puts "5'-" + final = acodon.count.times.map{|y|base[(acodon[y]).to_sym]}.join + "-3'"
    elsif acodon.last == "U"
    base = {:A => 'U', :G => 'C', :U => 'A', :C =>'G'}
    final = acodon.first(2).count.times.map{|y|base[(acodon[y]).to_sym]}
    u = %w(A G).sample(1)
    puts "5'-" + (final << u[0]).join + "-3'"
  elsif acodon.last == "G" 
    base = {:A => 'U', :G => 'C', :U => 'A', :C =>'G'}
    final = acodon.first(2).count.times.map{|y|base[(acodon[y]).to_sym]}
    u = %w(U C).sample(1)
    puts "5'-" + (final << u[0]).join + "-3'"
  elsif acodon.last== "I"
 	base = {:A => 'U', :G => 'C', :U => 'A', :C =>'G'}
    final = acodon.first(2).count.times.map{|y|base[(acodon[y]).to_sym]}
    u = %w(A U C).sample(1)
    puts "5'-" + (final << u[0]).join + "-3'"
  else
    puts "Gene error"
  end

end