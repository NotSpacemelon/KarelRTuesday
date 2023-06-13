
puts "Jouons un jeu de mathematique!"
puts "Il faut que tu me donne la somme de chaque ensemble de nombres:"
num1 = rand(1..50)
num2 = rand(1..50)

num3 = num1 + num2

liste = []

until num3 == liste.last
	puts
	puts "(#{num1} + #{num2})"
	puts "Que penses-tu est la somme?"
		str = gets.chomp.to_str
			liste << str.to_i
				if num3 == liste.last
					puts "Bravo!"
				else
					puts "Whoops! Cela n'est pas la somme"
				end
end


num1 = rand(1..50)
num2 = rand(1..50)

num3 = num1 + num2

liste1 = []

until num3 == liste1.last
	puts
	puts "(#{num1} + #{num2})"
	puts "Que penses-tu est la somme?"
		str = gets.chomp.to_str
			liste1 << str.to_i
				if num3 == liste1.last
					puts "Bravo!"
				else
					puts "Whoops! Cela n'est pas la somme"
				end
end


num1 = rand(1..50)
num2 = rand(1..50)

num3 = num1 + num2

liste2 = []

until num3 == liste2.last
	puts
	puts "(#{num1} + #{num2})"
	puts "Que penses-tu est la somme?"
		str = gets.chomp.to_str
			liste2 << str.to_i
				if num3 == liste2.last
					puts "Bien fait! Tu as terminer le jeu."
				else
					puts "Whoops! Cela n'est pas la somme"
				end
end
