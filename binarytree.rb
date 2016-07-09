Info = Struct.new(:number, :left, :right)

class Binary

	def initialize(numbers)
		@root = Info.new(numbers[0], nil, nil)
		tree(numbers)
	end

	attr_accessor :root

	def tree (child)
		root = @root
		child.each do |child|
			if child < root.number
				lefty(child, root)
			else
				righty(child, root)
			end
		end
	end

	def lefty(child, root)
		if root.left.nil?
			root.left = Info.new(child, nil, nil)
		else
			root = root.left
			tree(child, root)
		end 
	end

	def righty(child, root)
		if root.right.nil?
			root.left = Info.new(child, nil, nil)
		else
			root = root.right
			tree(child, root)
		end 
	end

	def display
		puts @root
	end

end

b = Binary.new([10,9,8,7,6,5])








