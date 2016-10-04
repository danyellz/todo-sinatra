class CreateTodos < ActiveRecord::Migration
	def change
		create_table :todos do |table|
			table.string :description
		end
	end
end