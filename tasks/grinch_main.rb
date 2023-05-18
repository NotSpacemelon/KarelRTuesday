#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "grinch_robot"

# a task for a beep move
def task()
  world = Robota::World
  world.read_world("../karel/chemine_grinch")

  karel = GrinchRobot.new(1, 12, Robota::NORTH, 0)
  karel.move2
  karel.turn_left
  karel.move
  karel.turn_right
  karel.move3
  karel.turn_left
  karel.operation_whosurdaddy
  karel.great_escape
  karel.turn_left
  karel.move4
  karel.move2
  karel.turn_left
  karel.operation_whosurdaddy
  karel.great_escape
  karel.turn_right
  karel.back_home
  karel.turn_left
  karel.move
  karel.turn_right
  karel.move2
  karel.put24_beepers
  karel.turn_around
  karel.move
  karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 85) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end