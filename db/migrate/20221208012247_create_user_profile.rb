class CreateUserProfile < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles, id: false, primary_key: :user_id, sequence_name: 'user_id_seq'  do |col|
      col.primary_key :user_id

      col.string :first_name
      col.string :last_name
      col.string :email
      col.string :phone
      col.string :mobile
      col.foreign_key :roles, column: :role_id, name: 'fk_user_role_id'
      col.foreign_key :owner, column: :owner_id, name: 'fk_user_owner_id'
    end
  end
end
