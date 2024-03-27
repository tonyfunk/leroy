class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :starting_date
      t.datetime :ending_date
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
