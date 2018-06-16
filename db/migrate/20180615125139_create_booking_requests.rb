class CreateBookingRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_requests do |t|
      t.string :venue_name
      t.string :location
      t.datetime :start_time
      t.datetime :end_time
      t.text :comment
      t.string :status
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
