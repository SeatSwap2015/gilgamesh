class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :external_payment_id
      t.string :external_customer_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
