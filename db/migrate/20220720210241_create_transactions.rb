class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :title
      t.string :typing
      t.string :categories
      t.float :amount

      t.timestamps
    end
  end
end
