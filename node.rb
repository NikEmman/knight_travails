# frozen_string_literal: true

class Node
  attr_accessor :row, :column, :connected

  def initialize(row, column, connected = [])
    @row = row
    @column = column
    @connected = connected
  end

  def coords
    [@row, @column]
  end
end
