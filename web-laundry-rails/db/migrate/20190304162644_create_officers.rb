class CreateOfficers < ActiveRecord::Migration[5.2]
  def change
    create_table :officers do |t|
      t.string :officer_name
      t.string :officer_address
      t.string :officer_gender
      t.integer :officer_phone

      t.timestamps
    end
  end
end
