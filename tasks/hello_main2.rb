#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "../mixins/turner"
require_relative "gerant"

# a task for a beep move
def task()
  gerant = Gerant.new(1, 1, NORTH, INFINITY)
  gerant.tache
end


if __FILE__ == $0
  if $graphical
     screen = window(21, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end

end