puts "Execution du code karel..."
require_relative "../karel/robota"
require_relative "repetitive_robot"

def task()
	karel = RepetitiveRobot.new(1, 1, NORTH, 16)

	commandes = %w[move move move move move move move turn_left turn_left turn_left move move move put_beeper move turn_left]
	commandes.each do |action|
		karel.send(action) if karel.respond_to?(action)
	end
	karel.turn_off
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 60) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end
