#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"
require_relative "../mixins/sensor_pack"

class KarelRobot2 < UrRobot
    include Default
    include SensorPack

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
 end

 def moving
 	 unless front_is_clear?
 	 	boot
 		turn_off
 	 else 
 		move
 end
end

end