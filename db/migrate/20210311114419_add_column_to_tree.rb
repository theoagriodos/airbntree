class AddColumnToTree < ActiveRecord::Migration[6.0]
  def change
    add_column :trees, :photo, :string
  end
end
