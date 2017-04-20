class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.decimal :value
      t.boolean :finished
      t.references :account, index: true, foreign_key: true

      t.timestamps
    end
  end
end
