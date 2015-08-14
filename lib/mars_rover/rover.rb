module MarsRover
  class Rover
    def initialize(current_direction)
      @current_direction = current_direction
    end

    def turn_left
      if @current_direction == "North"
        "West"
      elsif @current_direction == "West"
        "South"
      elsif @current_direction == "South"
        "East"
      elsif @current_direction == "East"
        "North"
      end
    end
  end
end