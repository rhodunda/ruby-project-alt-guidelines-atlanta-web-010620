class CreatePurchase < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
       t.integer :amount
       t.integer :product_id
       t.integer :user_id
       t.boolean :sold, default: :false 
     end 
  end
end
