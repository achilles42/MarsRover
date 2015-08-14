module MarsRover
  #move one step forward
  class Move
    def initialize(x_coordinate, y_coordinate)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
    end

    def forward
      @y_coordinate += 1
    end

  end
end
