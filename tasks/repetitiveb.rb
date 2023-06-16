@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

num1 = @matrice1.sum
puts"somme de @matrice1 = #{num1}"

num2 = @matrice2.length

num3 = num1 / num2

puts "moyenne de @matrice1 = #{num3}"




num4 = @matrice1.values_at(0, 1, 2, 3, 4).sum
num5 = @matrice2.values_at(-0, -1, -2, -3, -4).sum

num6 = num4 + num5
puts "La somme des 5 premier elements de @matrice1 et les 5 dernier elements de @matrice 2 est egale a #{num6}"

puts
puts "Calculations..."
(0..@matrice1.length - 1).each do |i|
	puts @matrice2[i] + @matrice1[i]
end

puts
puts "Calculations..."
n = @matrice2[24]
m = @matrice1[0]
	puts n + m
(1..@matrice1.length - 1).each do |i|
	puts @matrice2[i * - 1] + @matrice1[i]
end

puts
puts
puts "Combination, elimination des valeurs dupliquez et triage..."
puts (@matrice1 + @matrice2).uniq.sort