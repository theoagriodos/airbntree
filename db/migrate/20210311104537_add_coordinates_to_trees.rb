class AddCoordinatesToTrees < ActiveRecord::Migration[6.0]
  def change
    add_column :trees, :latitude, :float
    add_column :trees, :longitude, :float
  end
end
