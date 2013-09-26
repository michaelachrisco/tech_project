class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.string :transaction_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
