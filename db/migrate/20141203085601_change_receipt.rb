class ChangeReceipt < ActiveRecord::Migration
  def change
  	rename_column "orders", :sales_receipt, :attachment
  end
end
