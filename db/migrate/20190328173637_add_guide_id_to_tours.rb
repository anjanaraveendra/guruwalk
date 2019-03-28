class AddGuideIdToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :guide_id, :integer
  end
end
