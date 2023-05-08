#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class FermierRobot < UrRobot
    include Default

    def fermier
      beep_move
      move
      beep_move
      move
      beep_move
      move
      beep_move
      turn_left
      move
      turn_left
      beep_move
      move
      beep_move
      move
      beep_move
      turn_left
      move
      move
      pick_beeper
      turn_left
      move
      beep_move
      move
      beep_move
      turn_left
      move
      move
      move
      turn_left
      beep_move
      move
      beep_move
      turn_left
      move
      move
      move
      move
      pick_beeper
      turn_left
      move
      beep_move
      turn_left
      move
      move
      move
      move
      move
      turn_left
      beep_move
      turn_left
      move
      move
      move
      move
      move
      beep_move
   end

end