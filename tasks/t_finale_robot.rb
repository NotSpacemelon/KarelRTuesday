#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"
require_relative "../mixins/sensor_pack"

class TFinaleRobot < UrRobot
    include Default
    include SensorPack


def initialize (street, avenue, direction, beepers)
      super(street, avenue, direction, beepers)
end


def beepcheck
      while next_to_a_beeper?
            pick_beeper
      end
            move
end


def row
      12.times do
            beepcheck
      end
end


def laneswitch
      if facing_east?
            turn_left
            beepcheck
            turn_left
      elsif facing_west?
            turn_right
            beepcheck
            turn_right
      end
end


def mapsweep
      12.times do
            row
            laneswitch
      end
            row
end


def home
     2.times do 
            turn_right
            12.times do 
                  move
            end
      end
      turn_right
end


def home2
      turn_left
     $num2.times do 
        move
      end
      turn_right
end


def figure
      if $num2 == 0
            turn_off
      elsif $num2 > 0
            $num2.times do
                  figure_placement
            end
      end
end


def figure_placement
      $num3.times do
            beep_forme
      end
      turn_around
      $num3.times do
            move
      end
      turn_left
      move
      turn_left
      $num3 = $num3 + 1
end

end