class AddPhotoToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :photo, :string
  end
end
