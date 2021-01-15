class PolyTreeNode
    attr_reader :children, :parent, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        current_parent = self.parent
        current_parent.children.each { |child| current_parent.children.delete(self)  }
        @parent = node
        node.children << self unless node.children.include?(self) || node.nil?
    end

    def add_child(node)
        self.parent = node
    end

end

# node1 = PolyTreeNode.new(value1)
# node2 = PolyTreeNode.new(value2) # parent
# node1.parent = node2
# node2.add_child