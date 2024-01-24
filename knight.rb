# frozen_string_literal: true

require 'pry-byebug'

require_relative 'node'
class Knight_travels
  attr_accessor :board

  def initialize
    @board = []
  end

  def create_board(rows, columns)
    (1..rows).each do |row|
      (1..columns).each do |column|
        @board << Node.new(row, column)
      end
    end
  end

  def movement_allowed?(current_node, next_node)
    row_diff = (current_node.row - next_node.row).abs
    col_diff = (current_node.column - next_node.column).abs

    (row_diff == 2 && col_diff == 1) || (row_diff == 1 && col_diff == 2)
  end

  # sort of creates the graph of nodes that a knight piece can travel
  # ended up using coords and not whole object cuz irb crashed, will see
  def map_moves
    @board.each do |node|
      @board.each do |square|
        node.connected << square.coords if movement_allowed?(node, square)
      end
    end
  end

  def find_node(coords)
    current_node = nil
    @board.each { |node| current_node = node if coords == node.coords }
    current_node
  end

  def knight_moves(_current_cords, _destination_coords)
    path = []
    current_node = find(current_coords)
  end
end

a = Knight_travels.new
a.create_board(8, 8)
a.map_moves
