class ChangeColumnDa < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :date, :booked_at
  end
end
