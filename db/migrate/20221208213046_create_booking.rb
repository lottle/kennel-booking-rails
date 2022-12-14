class CreateBooking < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings, id: false, primary_key: :booking_id, sequence_name: 'booking_id_seq'  do |col|
      col.primary_key :booking_id

      col.string :start_date
      col.string :end_date
      col.string :drop_off_time
      col.string :pick_up_time
      col.foreign_key :dog, column: :dog_id, name: 'fk_booking_dog_id'
      col.foreign_key :owner, column: :owner_id, name: 'fk_booking_owner_id'
    end
  end
end
