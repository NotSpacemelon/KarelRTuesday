#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"
require_relative "h_robot"
require_relative "e_robot"
require_relative "ll_robot"
require_relative "o_robot"

class Gerant < UrRobot
    include Default

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, direction, beepers)
 end

 def tache 
  karel = HRobot.new(2, 2, NORTH, 12)
  karel.ecrit_lettre
  steward = ERobot.new(2, 7, NORTH, 11)
  steward.ecrit_lettre
  mike = LLRobot.new(2, 14, NORTH, 14)
  mike.ecrit_lettre
  jacob = ORobot.new(2, 19, NORTH, 12)
  jacob.ecrit_lettre
 end
end