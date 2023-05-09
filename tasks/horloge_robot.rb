#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class HorlogeRobot < UrRobot
    include Default

    def clock
     put_6_beepers
     move
     put_6_beepers
     move_beep
     move
     turn_right
     move_beep
     turn_left
     move
     turn_right
     move_beep
     move_beep
     move_beep
     put_beeper
     move_beep
     move
     turn_right
     move_beep
     turn_left
     move
     turn_right
     move_beep
     move_beep
     put_2_beepers
     move_beep
     put_2_beepers
     move_beep
     move
     turn_right
     move_beep
     turn_left
     move
     turn_right
     move_beep
     move_beep
     put_2_beepers
     put_2_beepers
     move_beep
     put_2_beepers
     put_beeper
     move_beep
     move
     turn_right
     move_beep
     turn_left
     move
     turn_right
     move_beep
     move
     turn_left
     move
   end

end