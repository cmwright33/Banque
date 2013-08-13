class CreateTableTransactions < ActiveRecord::Migration
  def up
    create_table :transactions do |t|
      t.string :typeof
      t.string :memo
      t.references :accounts

      t.timestamps
    end
  end

  def down
    drop_table :transactions
  end
end
