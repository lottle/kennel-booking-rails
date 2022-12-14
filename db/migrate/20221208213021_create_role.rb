class CreateRole < ActiveRecord::Migration[6.1]
  def change
    create_table :roles, id: false, primary_key: :role_id, sequence_name: 'role_id_seq'  do |col|
      col.primary_key :role_id

      col.string :name
    end
  end
end
