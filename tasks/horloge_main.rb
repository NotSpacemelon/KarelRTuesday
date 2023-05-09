#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "horloge_robot"

# a task for a beep move
def task()
  world = Robota::World
  world.read_world("../karel/horloge")

  karel = HorlogeRobot.new(10, 6, Robota::EAST, 44)
  karel.clock
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