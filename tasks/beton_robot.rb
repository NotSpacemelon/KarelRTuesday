#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class BetonRobot < UrRobot
    include Default

    def beton
      put_beeper
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      turn_left
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      turn_left
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      turn_left
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move_beep
      move
      turn_left
   end

end