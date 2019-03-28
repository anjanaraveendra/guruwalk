class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :number_of_people
      t.string :contact_email
      t.references :tour, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
