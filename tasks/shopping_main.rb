#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "writer"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/sobeys")

  karel = Writer.new(10, 10, SOUTH, 0)
  karel.turn_around
  karel.move
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move3
  karel.move3
  karel.move3
  karel.turn_right
  karel.move4
  karel.move3
  karel.turn_right
  karel.move5
  karel.pick10_beepers
  karel.move
  karel.pick10_beepers
  karel.turn_right
  karel.move
  karel.pick10_beepers
  karel.turn_around
  karel.move
  karel.turn_left
  karel.move3
  karel.move3
  karel.turn_left
  karel.move4
  karel.turn_left
  karel.move2
  karel.turn_left
  karel.move3
  karel.turn_left
  karel.move
  karel.pick10_beepers
  karel.turn_around
  karel.move
  karel.turn_right
  karel.move3
  karel.move3
  karel.turn_left
  karel.move4
  karel.move3
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move
  karel.put20_beepers
  karel.put20_beepers
  karel.back_up
  karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(12, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end