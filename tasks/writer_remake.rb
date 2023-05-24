#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License
require_relative "../karel/ur_robot"
require_relative "../mixins/default"

class WriterRemake < Writer
    include Default

 def initialize (street, avenue, direction, beepers)
    super(street, avenue, NORTH, beepers)
 end
end