class CreateOrderReceiveds < ActiveRecord::Migration[5.2]
  def change
    create_table :order_receiveds do |t|
      t.string :order_code
      t.integer :order_money
      t.integer :order_scales_laundry
      t.date :order_date_start
      t.date :order_date_end

      t.references :member, foreign_key: true
      t.references :officer, foreign_key: true

      t.timestamps
    end
  end
end
