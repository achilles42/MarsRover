module MarsRover
  #rover should able to turn and move
  class Rover
    TURN_LEFT = {
      "North" => "West",
      "West" => "South",
      "East" => "North",
      "South" => "East",
    }
    TURN_RIGHT = {
      "North" => "East",
      "West" => "North",
      "East" => "South",
      "South" => "West",
    }
    def initialize(current_direction, x_coordinate, y_coordinate)
      @current_direction = current_direction
      @move = Move.new(x_coordinate, y_coordinate)
    end

    def turn_left
      TURN_LEFT[@current_direction]
    end

    def turn_right
      TURN_RIGHT[@current_direction]
    end

    def move_north
      @move.forward
    end

    def move_east
      @move.forward
    end
  end
end
