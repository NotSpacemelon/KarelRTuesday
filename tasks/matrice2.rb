#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "matrice_robot"
require_relative "../karel/robota"
require_relative "../mixins/default"

# a task for a stair sweeper
def task()
  karel = MatriceRobot.new(1, 1, Robota::NORTH, 16)
  actions = %w[put_beeper move_beep4 turn_right move_beep4 turn_right move_beep4 turn_right move_beep move_beep move_beep turn_right move]
  actions.each do |action|
    karel.send(action) if karel.respond_to?(action)
  end
  karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
