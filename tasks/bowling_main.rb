#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "bowling_robot"

# a task for a beep move
def task()
  karel = BowlingRobot.new(2, 6, Robota::NORTH, 10)
  karel.quilles
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