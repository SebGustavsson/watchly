class RemovePriceFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :price, :string
  end
end
