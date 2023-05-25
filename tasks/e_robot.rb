#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class ERobot < UrRobot
    include Default

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
 end

 def move 
 	super
 end

 def ecrit_lettre
 	mput_5_beepers
 	turn_right
 	mput_2_beepers
 	move
 	turn_right
 	move2
 	turn_right
 	mput_2_beepers
 	move
 	turn_left
 	move2
 	turn_left
 	mput_2_beepers
 	turn_right
 	move
 	turn_around
 end
end