class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :member_code
      t.string :member_name
      t.string :member_address
      t.integer :member_phone
      t.string :member_status

      t.timestamps
    end
  end
end
