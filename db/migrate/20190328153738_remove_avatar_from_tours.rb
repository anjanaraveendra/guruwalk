class RemoveAvatarFromTours < ActiveRecord::Migration[5.1]
  def change
    remove_column :tours, :avatar, :string
  end
end
