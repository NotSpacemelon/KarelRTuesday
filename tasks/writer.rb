#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class Writer < UrRobot
    include Default

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
 end

 def move 
 	super
 end

 def put_beeper
 	super
 end

 def pick_beeper
 	super
 end

 def turn_right
	super
 end

 def turn_left
	super
 end

 def turn_around
	super
 end

 def go
 	move2
 	move3
 	put_beeper
 	turn_right
 end

 def g
 	move2
 	move3
 end
end