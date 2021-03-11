class DeletePhoto < ActiveRecord::Migration[6.0]
  def change
    remove_column :trees, :photo
  end
end
