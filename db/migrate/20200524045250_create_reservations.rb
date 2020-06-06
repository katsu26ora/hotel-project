class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :mail
      t.datetime :hotelin
      t.datetime :hotelout
      t.integer :people

      t.timestamps
    end
  end
end
