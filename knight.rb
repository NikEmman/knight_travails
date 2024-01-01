class Knight
    attr_reader :value
    
    def initialize(value)
      @value = value
      @adjacent_nodes = []
      @moves = [[-1,-2],[-1,2],[1,-2],[1,2],[-2,-1],[-2,1],[2,-1],[2,1]]
    end
    
    def add_edge(adjacent_node)
      @adjacent_nodes << adjacent_node
    end
end
