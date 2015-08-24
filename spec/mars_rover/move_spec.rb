require 'spec_helper'

module MarsRover
  context 'Move' do
    it 'should able to move one step in north direction' do
      x_coordinate = 1
      y_coordinate = 1
      move = Move.new(x_coordinate, y_coordinate)
      expect(move.forward).to eq(y_coordinate)
    end
  end
end
