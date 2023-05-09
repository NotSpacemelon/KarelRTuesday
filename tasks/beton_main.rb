#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "beton_robot"

# a task for a beep move
def task()
  world = Robota::World
  world.read_world("../karel/construction")

  karel = BetonRobot.new(9, 2, Robota::SOUTH, 29)
  karel.beton
  karel.turn_off

end

if __FILE__ == $0
  if $graphical
     screen = window(12, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end