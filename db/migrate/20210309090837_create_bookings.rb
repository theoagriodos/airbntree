class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.string :status
      t.references :user, foreign_key: true
      t.references :tree, foreign_key: true
      t.timestamps
    end
  end
end
