Info = Struct.new(:number, :left, :right)

class Binary

	def initialize(numbers)
		@root = Info.new(numbers[0], nil, nil)
		main_tree_loop(numbers[0..-1])
	end


	attr_accessor :root


	def main_tree_loop (child)
		child.each do |child|
			split(child)
		end
	end

	def split(child, root =@root)
		if child < root.number
			lefty(child, root)
		else
			righty(child, root)
		end
	end


	def lefty(child, root)
		if root.left.nil?
			root.left = Info.new(child, nil, nil)
			puts "#{child} gets placed on the left"
		else
			root = root.left
			split(child, root)

		end 
	end

	def righty(child, root)
		if root.right.nil?
			root.left = Info.new(child, nil, nil)
			puts "#{child} gets placed on the right"

		else
			root = root.right
			split(child, root)
			puts "#{child} gets placed on the right"

		end 
	end 

end

b = Binary.new([10,9,8,7,6,5,10,9,8,7,6])
puts b.root








