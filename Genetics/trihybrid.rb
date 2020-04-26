#Generating Trihybridcross
def tricross(a,b)
  genotype_1 = a
  genotype_2 = b
  return "Gene error" if (genotype_2.class != String) or (genotype_1.class != String)
  return 'Only four alleles are allowed' if genotype_1.size != genotype_2.size
  return 'First two alleles are not compatible.' if (genotype_1[0..1]).upcase != (genotype_2[0..1]).upcase
  return 'second two alleles are not compatible.' if (genotype_1[2..3]).upcase != (genotype_2[2..3]).upcase
  return 'last two alleles are not compatible.' if (genotype_1[4..5]).upcase != (genotype_2[4..5]).upcase
  return 'Only four alleles are allowed' if genotype_1.size < 6 || genotype_2.size < 6 || genotype_1.size > 6 || genotype_2.size > 6

  puts "Enter Dominant trait for #{(genotype_1[0]).upcase}"
  domg = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[1]).downcase}"
  recg = gets.chomp.capitalize
  puts "Enter Dominant trait for #{(genotype_1[2]).upcase}"
  domg_2 = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[3]).downcase}"
  recg_2 = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[4]).upcase}"
  domg_3 = gets.chomp.capitalize
  puts "Enter recessive trait for #{(genotype_1[5]).downcase}"
  recg_3 = gets.chomp.capitalize

  trait_1 = {(genotype_1[0]).upcase => "#{domg}", (genotype_1[0]).downcase => "#{recg}"}
  trait_2 = {(genotype_1[2]).upcase => "#{domg_2}", (genotype_1[2]).downcase => "#{recg_2}"}
  trait_3 = {(genotype_1[4]).upcase => "#{domg_3}", (genotype_1[4]).downcase => "#{recg_3}"}

  pa_gametes_1 = (genotype_1[0..1].chars.product(genotype_2[0..1].chars)).sort_by{|r|r.sort!}
  pa_gametes_2 = (genotype_1[2..3].chars.product(genotype_2[2..3].chars)).sort_by{|r|r.sort!}
  pa_gametes_3 = (genotype_1[4..5].chars.product(genotype_2[4..5].chars)).sort_by{|r|r.sort!}

   origin_1 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[0] + pa_gametes_2[0] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_2 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[0] + pa_gametes_2[1] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_3 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[0] + pa_gametes_2[2] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_4 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[0] + pa_gametes_2[3] + pa_gametes_3[y]}).each.map{|z|z.join}

   origin_5 =  (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[1] + pa_gametes_2[0] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_6 =  (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[1] + pa_gametes_2[1] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_7 =  (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[1] + pa_gametes_2[2] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_8 =  (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[1] + pa_gametes_2[3] + pa_gametes_3[y]}).each.map{|z|z.join}

   origin_9 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[2] + pa_gametes_2[0] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_10 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[2] + pa_gametes_2[1] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_11 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[2] + pa_gametes_2[2] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_12 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[2] + pa_gametes_2[3] + pa_gametes_3[y]}).each.map{|z|z.join}

   origin_13 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[3] + pa_gametes_2[0] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_14 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[3] + pa_gametes_2[1] + pa_gametes_3[y]}).each.map{|z|z.join}
   origin_15 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[3] + pa_gametes_2[2] + pa_gametes_3[y]}).each.map{|z|z.join}
  origin_16 = (pa_gametes_1.count.times.each.map{|y|pa_gametes_1[3] + pa_gametes_2[3] + pa_gametes_3[y]}).each.map{|z|z.join}



  final_1 = origin_1.count.times.each.map{|u| (origin_1[u]) + " " + trait_1[origin_1[u][0]] + " " +  trait_2[origin_1[u][2]] +" "+ trait_3[origin_1[u][4]] }
  final_2 = origin_2.count.times.each.map{|u|(origin_2[u]) + " " + trait_1[origin_2[u][0]] + " " +  trait_2[origin_2[u][2]] + " "+ trait_3[origin_2[u][4]]}
  final_3 =  origin_3.count.times.each.map{|u|(origin_3[u]) + " " + trait_1[origin_3[u][0]] + " " +  trait_2[origin_3[u][2]] + " "+ trait_3[origin_3[u][4]]}
  final_4 =  origin_4.count.times.each.map{|u|(origin_4[u]) + " " + trait_1[origin_4[u][0]] + " " +  trait_2[origin_4[u][2]] + " "+ trait_3[origin_4[u][4]]}
  final_5 =  origin_5.count.times.each.map{|u|(origin_5[u]) + " " + trait_1[origin_5[u][0]] + " " +  trait_2[origin_5[u][2]] + " "+ trait_3[origin_5[u][4]]}
  final_6 =  origin_6.count.times.each.map{|u|(origin_6[u]) + " " + trait_1[origin_6[u][0]] + " " +  trait_2[origin_6[u][2]] + " "+ trait_3[origin_6[u][4]]}
  final_7 =  origin_7.count.times.each.map{|u|(origin_7[u]) + " " + trait_1[origin_7[u][0]] + " " +  trait_2[origin_7[u][2]] + " "+ trait_3[origin_7[u][4]]}
  final_8 =  origin_8.count.times.each.map{|u|(origin_8[u]) + " " + trait_1[origin_8[u][0]] + " " +  trait_2[origin_8[u][2]] + " "+ trait_3[origin_8[u][4]]}
  final_9 =  origin_9.count.times.each.map{|u|(origin_9[u]) + " " + trait_1[origin_9[u][0]] + " " +  trait_2[origin_9[u][2]] + " "+ trait_3[origin_9[u][4]]}
  final_10 =  origin_10.count.times.each.map{|u|(origin_10[u]) + " " + trait_1[origin_10[u][0]] + " " +  trait_2[origin_10[u][2]] + " "+ trait_3[origin_10[u][4]]}
  final_11 =  origin_11.count.times.each.map{|u|(origin_11[u]) + " " + trait_1[origin_11[u][0]] + " " +  trait_2[origin_11[u][2]] + " "+ trait_3[origin_11[u][4]]}
  final_12 =  origin_12.count.times.each.map{|u|(origin_12[u]) + " " + trait_1[origin_12[u][0]] + " " +  trait_2[origin_12[u][2]] + " "+ trait_3[origin_12[u][4]]}
  final_13 =  origin_13.count.times.each.map{|u|(origin_13[u]) + " " + trait_1[origin_13[u][0]] + " " +  trait_2[origin_13[u][2]] + " "+ trait_3[origin_13[u][4]]}
  final_14 =  origin_14.count.times.each.map{|u|(origin_14[u]) + " " + trait_1[origin_14[u][0]] + " " +  trait_2[origin_14[u][2]] + " "+ trait_3[origin_14[u][4]]}
  final_15 =  origin_15.count.times.each.map{|u|(origin_15[u]) + " " + trait_1[origin_15[u][0]] + " " +  trait_2[origin_15[u][2]] + " "+ trait_3[origin_15[u][4]]}
  final_16 =  origin_16.count.times.each.map{|u|(origin_16[u]) + " " + trait_1[origin_16[u][0]] + " " +  trait_2[origin_16[u][2]] + " "+ trait_3[origin_16[u][4]]}

  puts "1." + final_1[0] +" "+  "2." + final_1[1] +" "+ "3."+final_1[2] +" "+ "4."+final_1[3]
  puts "5." + final_2[0] +" "+  "6." + final_2[1] +" "+ "7."+final_2[2] +" "+ "8."+final_2[3]
  puts "9." + final_3[0] +" "+  "10." + final_3[1] +" "+ "11."+final_3[2] +" "+ "12."+final_3[3]
  puts "13." + final_4[0] +" "+  "14." + final_4[1] +" "+ "15."+final_4[2] +" "+ "16."+final_4[3]
  puts "17." + final_5[0] +" "+  "18." + final_5[1] +" "+ "19."+final_5[2] +" "+ "20."+final_5[3]
  puts "21." + final_6[0] +" "+  "22." + final_6[1] +" "+ "23."+final_6[2] +" "+ "24."+final_6[3]
  puts "25." + final_7[0] +" "+  "26." + final_7[1] +" "+ "27."+final_7[2] +" "+ "28."+final_7[3]
  puts "29." + final_8[0] +" "+  "30." + final_8[1] +" "+ "31."+final_8[2] +" "+ "32."+final_8[3]
  puts "33." + final_9[0] +" "+  "34." + final_9[1] +" "+ "35."+final_9[2] +" "+ "36."+final_9[3]
  puts "37." + final_10[0] +" "+  "38." + final_10[1] +" "+ "39."+final_10[2] +" "+ "40."+final_10[3]
  puts "41." + final_11[0] +" "+  "42." + final_11[1] +" "+ "43."+final_11[2] +" "+ "44."+final_11[3]
  puts "45." + final_12[0] +" "+  "46." + final_12[1] +" "+ "47."+final_12[2] +" "+ "48."+final_12[3]
  puts "49." + final_13[0] +" "+  "50." + final_13[1] +" "+ "51."+final_13[2] +" "+ "52."+final_13[3]
  puts "53." + final_14[0] +" "+  "54." + final_14[1] +" "+ "55."+final_14[2] +" "+ "56."+final_14[3]
  puts "57." + final_15[0] +" "+  "58." + final_15[1] +" "+ "59."+final_15[2] +" "+ "60."+final_15[3]
  puts "61." + final_16[0] +" "+  "62." + final_16[1] +" "+ "63."+final_16[2] +" "+ "64."+final_16[3]







end
