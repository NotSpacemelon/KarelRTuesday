#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "writer"

# a task for a stair sweeper
def task()
  karel = Writer.new(1, 1, NORTH, 1)
  bob = Writer.new(6, 1, EAST, 0)
  jeremy = Writer.new(6, 6, SOUTH, 0)
  kevin = Writer.new(1, 6, WEST, 0)
  karel.go
  bob.pick_beeper
  bob.go
  jeremy.pick_beeper
  jeremy.go
  kevin.pick_beeper
  kevin.g
  kevin.turn_right
  kevin.go
  karel.pick_beeper
  karel.go
  bob.pick_beeper
  bob.go
  jeremy.pick_beeper
  jeremy.g
  jeremy.turn_right
  jeremy.go
  kevin.pick_beeper
  kevin.go
  karel.pick_beeper
  karel.go
  bob.pick_beeper
  bob.g
  bob.turn_right
  bob.go
  jeremy.pick_beeper
  jeremy.go
  kevin.pick_beeper
  kevin.go
  karel.pick_beeper
  karel.go
  bob.pick_beeper
  bob.go
  jeremy.pick_beeper
  jeremy.go
  kevin.pick_beeper
  kevin.go
  karel.pick_beeper
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