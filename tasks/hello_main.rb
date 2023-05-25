#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "h_robot"
require_relative "e_robot"
require_relative "ll_robot"
require_relative "o_robot"

# a task for a beep move
def task()
  karel = HRobot.new(2, 2, NORTH, 12)
  steward = ERobot.new(2, 7, NORTH, 11)
  mike = LLRobot.new(2, 14, NORTH, 14)
  jacob = ORobot.new(2, 19, NORTH, 12)
  
  karel.ecrit_lettre
  karel.turn_off
  steward.ecrit_lettre
  steward.turn_off
  mike.ecrit_lettre
  mike.turn_off
  jacob.ecrit_lettre
  jacob.turn_off
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