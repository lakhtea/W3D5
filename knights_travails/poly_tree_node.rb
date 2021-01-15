class PolyTreeNode
    attr_reader :children, :parent, :value

    def initialize(value)
        @value = value # position array
        @parent = nil
        @children = []
    end

    def parent=(node)
        if self.parent
            current_parent = self.parent
            current_parent.children.each { |child| current_parent.children.delete(self)  }
        end
        @parent = node
        node.children << self unless node.nil? || node.children.include?(self)
    end

    def add_child(node)
        node.parent = self
    end

    def remove_child(node)
        if node.parent.nil?
            raise "Node is not a child"
        end
        node.parent = nil
    end

      def dfs(target)
        return self if self.value == target

        self.children.each do |child| 
            result = child.dfs(target)
            return result if !result.nil?
        end

        nil
    end

    # [a, b, c, d, e] 
    def bfs(target)
        queue = [self]

        until queue.empty?
            ele = queue.shift
            return ele if ele.value == target
            ele.children.each { |child| queue << child }
        end

        nil
    end

end


# node1 = PolyTreeNode.new(value1)
# node2 = PolyTreeNode.new(value2) # parent
# node1.parent = node2
# node2.add_child