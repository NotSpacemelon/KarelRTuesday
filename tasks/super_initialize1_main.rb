#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "writer"

# a task for a stair sweeper
def task()
  karel = Writer.new(4, 3, EAST, INFINITY)
  karel.move 
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_around
  karel.move
  karel.move
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move4
  karel.turn_right
  karel.move
  karel.turn_right
  karel.pick_beeper
  karel.move
  karel.pick_beeper
  karel.move
  karel.pick_beeper
  karel.move
  karel.pick_beeper
  karel.move
  karel.pick_beeper
  karel.turn_around
  karel.move
  karel.move
  karel.put_beeper
  karel.turn_left
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_around
  karel.move
  karel.move
  karel.move
  karel.put_beeper
  karel.move
  karel.put_beeper
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.move
  karel.move
  karel.turn_right
  karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end