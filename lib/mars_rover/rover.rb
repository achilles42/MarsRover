module MarsRover
  #rover should able to turn and move
  class Rover
    def initialize(current_direction, x_coordinate, y_coordinate)
      @current_direction = current_direction
      @turn_left = {
        "North" => "West",
        "West" => "South",
        "East" => "North",
        "South" => "East",
      }
      @turn_right = {
        "North" => "East",
        "West" => "North",
        "East" => "South",
        "South" => "West",
      }
      @move = Move.new(x_coordinate, y_coordinate)
    end

    def turn_left
      @turn_left[@current_direction]
    end

    def turn_right
      @turn_right[@current_direction]
    end

    def move_north
      @move.forward
    end

    def move_east
      @move.forward
    end
  end
end
