#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../karel/heritier"

class Heritier2 < Heritier

	def colonne_haut
	turn_left
	turn_left
	turn_left
	move
	turn_left
	turn_left
	turn_left
end

def colonne_bas
	turn_left
	move
	turn_left
end

def square_beep
    super
    colonne_haut
    super
    colonne_bas
    super
    colonne_haut
    super
    colonne_bas
    super
end

end