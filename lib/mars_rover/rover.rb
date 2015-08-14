module MarsRover
  class Rover
    def initialize(current_direction)
      @current_direction = current_direction
    end

    def turn_left
      if @current_direction == "North"
        "West"
      else
        "South"
      end
    end
  end
end