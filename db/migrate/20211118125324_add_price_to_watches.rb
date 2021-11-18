class AddPriceToWatches < ActiveRecord::Migration[6.0]
  def change
    add_column :watches, :price, :string
  end
end
