class AddStatusToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :status, :integer, default: 0
  end
end
