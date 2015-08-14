require 'spec_helper'

module MarsRover
  context 'turn left' do
    it 'should turn to left direction' do
      current_direction = "North"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("West")
    end

    it 'should turn to South direction it its current direction is West' do
      current_direction = "West"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("South")
    end

    it 'should turn to East direction it its current direction is South' do
      current_direction = "South"
      rover = Rover.new(current_direction)
      expect(rover.turn_left).to eq("East")
    end
  end
end
