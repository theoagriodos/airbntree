class CreateTrees < ActiveRecord::Migration[6.0]
  def change
    create_table :trees do |t|
      t.string :name
      t.text :description
      t.string :localisation
      t.string :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
