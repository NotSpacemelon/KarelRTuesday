#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true
$num1 = rand(1..2)

require_relative "../mixins/default"
require_relative "../mixins/sensor_pack"
require_relative "t_finale_robot"

def task()
    world = Robota::World
  if $num1 == 1
    world.read_world("../karel/tache_finale_a")
  elsif $num1 == 2
    world.read_world("../karel/tache_finale_b")
  end

  karel = TFinaleRobot.new(1, 1, NORTH, 0)
  karel.turn_right
  karel.mapsweep
  karel.home

  liste = []
  puts "Je vais cree un triangle lineaire de gauche a droite. Combien de colonne (entre 0 et 13) veus-tu?"
  str = gets.chomp.to_str
  liste << str.to_i
  $num2 = liste[0]
  $num3 = 1
  puts "Nombres de colonnes : #{liste[0]}"
  karel.figure
  karel.home2
  karel.turn_off
end


if __FILE__ == $0
  if $graphical
     screen = window(13, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end