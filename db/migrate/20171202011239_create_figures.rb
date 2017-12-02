class CreateFigures < ActiveRecord::Migration[4.2]
  def change
  	create_table :name do |t|
  		t.string :name
  	end 
  end
end
