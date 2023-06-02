#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/default"
require_relative "aleatoire_robot"

# a task for a beep move
def task()
  world = Robota::World
  world.read_world("../karel/aleatoire1")

  karel = AleatoireRobot.new(2, 2, NORTH, 0)
  karel.sweep
end


if __FILE__ == $0
  if $graphical
     screen = window(21, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end