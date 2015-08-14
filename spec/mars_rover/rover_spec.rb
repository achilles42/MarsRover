require 'spec_helper'

module MarsRover
  context 'turn left' do
    it 'should turn to left direction' do
      current_direction = "North"
      rover = Rover.new(current_direction,0 ,0)
      expect(rover.turn_left).to eq("West")
    end

    it 'should turn to South direction it its current direction is West' do
      current_direction = "West"
      rover = Rover.new(current_direction,0 ,0)
      expect(rover.turn_left).to eq("South")
    end

    it 'should turn to East direction it its current direction is South' do
      current_direction = "South"
      rover = Rover.new(current_direction, 0, 0)
      expect(rover.turn_left).to eq("East")
    end
  end

  context 'turn right' do
    it 'should turn to right direction' do
      current_direction = "North"
      rover = Rover.new(current_direction, 0, 0)
      expect(rover.turn_right).to eq("East")
    end

    it 'should turn to South direction it its current direction is East' do
      current_direction = "East"
      rover = Rover.new(current_direction, 0, 0)
      expect(rover.turn_right).to eq("South")
    end
  end

  context "moves" do
    it "should able to move in north direction" do
      x_coordinate = 0
      y_coordinate = 0
      current_direction = "East"
      rover = Rover.new(current_direction, x_coordinate, y_coordinate)
      expect(rover.move_north).to eq(y_coordinate + 1)
    end

    it "should able to move in east direction" do
      x_coordinate = 0
      y_coordinate = 0
      current_direction = "East"
      rover = Rover.new(current_direction, x_coordinate, y_coordinate)
      expect(rover.move_east).to eq(x_coordinate + 1)
    end
  end
end

