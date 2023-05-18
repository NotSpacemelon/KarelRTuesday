#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "cloche_robot"

# a task for a beep move
def task()
  karel = ClocheRobot.new(1, 6, Robota::NORTH, 26)
  karel.put_beeper
  karel.mput_6_beepers
  karel.move_beep
  karel.turn_right
  karel.move
  karel.turn_right
  karel.mput_6_beepers
  karel.turn_left
  karel.move_beep
  karel.turn_left
  karel.move_beep
  karel.turn_right
  karel.move
  karel.turn_right
  karel.move_beep
  karel.turn_right
  karel.move4
  karel.put_beeper
  karel.turn_right
  karel.mput_5_beepers
  karel.turn_left
  karel.move
  karel.turn_left
  karel.move4
  karel.put_beeper
  karel.move_beep
  karel.turn_right
  karel.move_beep
  karel.move
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