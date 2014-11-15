class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :custumer
      t.string :product
      t.string :account_approval
      t.text :account_comment
      t.string :warehouse_approval
      t.string :destination
      t.string :current_location
      t.string :delivered

      t.timestamps
    end
  end
end
