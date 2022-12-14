class CreateOwner < ActiveRecord::Migration[6.1]
  def change
    create_table :owners, id: false, primary_key: :owner_id, sequence_name: 'owner_id_seq'  do |col|
      col.primary_key :owner_id

      col.foreign_key :dog, column: :dog_id, name: 'fk_owner_dog_id'
      col.foreign_key :booking, column: :booking_id, name: 'fk_owner_booking_id'
    end
  end
end
