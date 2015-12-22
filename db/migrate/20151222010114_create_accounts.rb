class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :descrition
      t.integer :amount
      t.string :client
      t.string :account_type
      t.date :date
      t.integer :balance

      t.timestamps null: false
    end
  end
end
