class CreateAccountTable < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.integer :total
      t.string :name
    end
  end

  def down
    droup_table :accounts
  end
end
