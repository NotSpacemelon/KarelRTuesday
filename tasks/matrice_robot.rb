#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class MatriceRobot < UrRobot
    include Default

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
 end

 def pick_beeper 
 	super
 end

 def move_beep4
 	move_beep
 	move_beep
 	move_beep
 	move_beep
 end

end