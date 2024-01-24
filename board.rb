# frozen_string_literal: true

require_relative 'node'

class Board
  attr_accessor :node_collection

  def initialize
    @node_collection = []
  end

  def create_board(rows, columns)
    (1..rows).each do |row|
      (1..columns).each do |column|
        @node_collection << Node.new(row, column)
      end
    end
  end
end
