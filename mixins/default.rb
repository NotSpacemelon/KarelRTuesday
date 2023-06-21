#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end

module Default

  # Turn right by executing three turn left actions
  def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  # Turn around by executing two turn left actions
  def turn_around
    turn_left
    turn_left
  end
  
  # Back up by turning around, moving and again turning around. Robot
  # will be left facing the original direction. Might fail if there is 
  # a wall immediately behind the robot at the start. 
  def back_up
    turn_around
    move
    turn_around
  end

  def boot
    turn_around
    turn_around
  end

  def move_beep
    move
    put_beeper
  end

  def move_beep2
    put_beeper
    move
  end

  def beep_forme
    if any_beepers_in_beeper_bag?
      put_beeper
      move
    elsif !any_beepers_in_beeper_bag?
      move
    end
  end

  def beep_move
    move
    pick_beeper
  end

  def beep_move2
    pick_beeper
    move
  end

  def put_6_beepers
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
  end

  def mput_6_beepers
    move_beep
    move_beep
    move_beep
    move_beep
    move_beep
    move_beep
  end

  def mput_5_beepers
    move_beep
    move_beep
    move_beep
    move_beep
    move_beep
  end

  def mput_4_beepers
    move_beep
    move_beep
    move_beep
    move_beep
  end

  def put_2_beepers
    put_beeper
    put_beeper
  end

  def mput_2_beepers
    move_beep
    move_beep
  end

  def put24_beepers
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
  end

  def put20_beepers
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
    put_beeper
  end

  def clean_column
    beep_move
    beep_move
    beep_move
    beep_move
    beep_move
  end

  def arrange_row
    move_beep
    move_beep
    move_beep
    move_beep
    move_beep
  end

  def move4
    move
    move
    move
    move
  end

  def move5
    move
    move
    move
    move
    move
  end

  def pick2_beepers
    pick_beeper
    pick_beeper
  end

  def pick10_beepers
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
    pick_beeper
  end

  def move2
    move
    move
  end

  def move3
    move
    move
    move
  end

  def sneaky_escape
    turn_around
    move
    turn_left
    move2
    turn_right
    move
    turn_left
    move2
  end

  def operation_cadeaux
    move
    turn_left
    move2
    turn_right
    move
    turn_left
    move2
    pick2_beepers
    turn_right 
    move
    pick2_beepers
  end

  def operation_whosurdaddy
    operation_cadeaux
    sneaky_escape
    turn_left
    move2
    operation_cadeaux
    sneaky_escape
    turn_left
    move2
    operation_cadeaux
    sneaky_escape
  end

  def great_escape
    turn_right
    move4
    move3
  end

  def back_home
    move3
    move3
    move3
  end
end