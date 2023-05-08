#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/quilles"

class BowlingRobot < UrRobot
    include Quilles

    def quilles
      move
      move
      move_beep
      move
      turn_right
      move_beep
      move
      move_beep
      turn_right
      move
      turn_right
      move_beep
      turn_left
      move
      turn_right
      move_beep
      turn_left
      move
      turn_right
      move_beep
      move
      turn_right
      move_beep
      turn_left
      move
      turn_right
      move_beep
      turn_left
      move
      turn_right
      move_beep
      turn_right
      move
      move_beep
      move
      turn_left
      move
      turn_left
      turn_left
      turn_off
   end

end