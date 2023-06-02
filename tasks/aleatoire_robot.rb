#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
$var1 = true

require_relative "../karel/ur_robot"
require_relative "../mixins/default"
require_relative "../mixins/sensor_pack"

class AleatoireRobot < UrRobot
    include Default
    include SensorPack

	 def initialize (street, avenue, direction, beepers)
	    super(street, avenue, direction, beepers)
	 end

	 def moving
	 	 if front_is_clear?
	 	 	movin
	 	 elsif not front_is_clear?
	 	 	column_change
	 	end
	end

	def column_change
	 	if facing_north? 
		 	turn_right
		 	movin
		 	turn_right
	 	else
		 	turn_left
		 	movin
		 	turn_left
		end
	end

	def movin
		if next_to_a_beeper?
			beep_move2
		elsif not next_to_a_beeper?
			move
		end
	end

	def sweeper
		moving
		moving
		moving
		moving
		moving
		moving
		moving
		moving
		moving
	end

	def sweeperer
		moving
		moving
		moving
		moving
		moving
		moving
		moving
		moving
	end

	def sweep
		sweeper
		sweeper
		sweeper
		sweeper
		sweeper
		sweeper
		sweeper
		sweeper
		sweeper
		sweeperer
		put_2_beepers
		turn_left
		move5
		move3
		put_2_beepers
		turn_left
		move5
		move4
		put_2_beepers
		turn_left
		move5
		move3
		put_2_beepers
		turn_left
		move
	end
end