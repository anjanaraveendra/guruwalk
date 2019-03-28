class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
