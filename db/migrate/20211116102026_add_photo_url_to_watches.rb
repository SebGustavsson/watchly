class AddPhotoUrlToWatches < ActiveRecord::Migration[6.0]
  def change
    add_column :watches, :photo_url, :string, default: "pending"
  end
end
