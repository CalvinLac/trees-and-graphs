require_relative 'edge'

class Matrix

	attr_accessor :edge_list, :mainmatrix

	def initialize(edge_list)
		@edge_list = edge_list
		@number_people_setup = edge_list.list.size
		@mainmatrix = Array.new(@number_people_setup){Array.new(@number_people_setup,0)}
	end

	def render

		@mainmatrix.each_with_index do |row,rindex|
			row.each_with_index do |cols, cindex|
				print @mainmatrix[rindex,cindex]
			end
			puts
		end
	end





end

edge = EdgeList.new(3)

m = Matrix.new (edge)
m.render

