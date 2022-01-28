class CreateTransactionFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :transaction_files do |t|
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
