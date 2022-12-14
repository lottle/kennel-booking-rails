class CreateDog < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs, id: false, primary_key: :dog_id, sequence_name: 'dog_id_seq'  do |col|
      col.primary_key :dog_id

      col.string :name
      col.boolean :microchipped
      col.boolean :
      col.foreign_key :roles, column: :role_id, name: 'fk_user_role_id'
      col.foreign_key :owner, column: :owner_id, name: 'fk_user_owner_id'
    end
  end
end
