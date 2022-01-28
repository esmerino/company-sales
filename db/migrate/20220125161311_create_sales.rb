class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :company, null: false, foreign_key: true
      t.references :transaction_file, null: false, foreign_key: true
      t.string :purchaser_name
      t.string :item_description
      t.decimal :item_price, precision: 10, scale: 2
      t.integer :purchase_count
      t.text :merchant_address
      t.text :merchant_name

      t.timestamps
    end
  end
end
