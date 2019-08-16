class CreateReservationsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :checkin
      t.datetime :checkout
      t.integer :guest_id
      t.integer :listing_id
      t.integer :review_id
    end
  end
end
