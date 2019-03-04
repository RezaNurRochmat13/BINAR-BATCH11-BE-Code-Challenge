class CreatePackagingLaundries < ActiveRecord::Migration[5.2]
  def change
    create_table :packaging_laundries do |t|
      t.string :packing_code
      t.string :packing_status
      t.date :date_packing

      t.references :member, foreign_key: true
      t.references :officer, foreign_key: true

      t.timestamps
    end
  end
end
