require_relative "poly_tree_node"

class KnightPathFinder

    def initialize(pos)
        self.root_node = PolyTreeNode.new(pos) # array, move up by 2-1 or 1-2
        build_move_tree(self.root_node)
        @considered_positions = [pos]
    end

    # def build_move_tree(root_node)

    # end

    def self.valid_moves(pos) # up to a possible moves 21, 12, -21, 2-1, -2-1, -12, 1-2, -1-2 
        case pos 
        when pos 
        end
    end

    def new_move_positions
    end

end