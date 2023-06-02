#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "karel_robot"

# a task for a beep move
def task()
  world = Robota::World
  world.read_world("../karel/wall")

  karel = KarelRobot.new(2, 2, NORTH, 0)
  karel.moving
  karel.moving
  karel.moving
  karel.moving
  karel.moving
  karel.moving
  karel.moving
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