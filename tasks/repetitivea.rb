@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

num1 = @matrice1.first

num2 = @matrice1[0]

puts "#{num1}"
puts "#{num2}"
puts ""
puts"Maintenant je vais calculer la somme de l'element 1 de @matrice1 avec l'element 10 de @matrice2"
puts"#{@matrice1[0]} + #{@matrice2[10]}"
num4 = @matrice1[0] + @matrice2[10]
puts"#{num4}"
puts ""
puts"Maintenant je vais calculer la somme de la plus grande valeur de @matrice1 avec la plus grande valeur de @matrice2"
num5 = @matrice1.sort.last
num6 = @matrice2.sort.last
somme = num5 + num6
puts"#{num5} + #{num6}"
puts"#{somme}"
puts""
puts"Maintenant je vais calculer la somme de la plus petite valeur de @matrice1 avec la plus petite valeur de @matrice2"
num7 = @matrice1.sort.first
num8 = @matrice2.sort.first
somme1 = num7 + num8
puts"#{num7} + #{num8}"
puts"#{somme1}"
puts""
puts"Maintenant je vais trouver la plus petite valeur dans les deux matrices"

liste = []

@matrice1.each do |i|
		liste <<  i
end

@matrice2.each do |i|
		liste << i
end

x = liste.uniq.sort.first
puts "#{x}"
puts""
puts"Maintenant je vais combiner les deux matrices et triez le resultat"

liste1 = []

@matrice1.each do |s|
		liste1 <<  s
end

@matrice2.each do |s|
		liste1 << s
end

y = liste1.uniq.sort
puts "#{y}"