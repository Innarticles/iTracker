class FileOnOrders < ActiveRecord::Migration
  def change
  	add_column("orders", "sales_receipt", :string, :after => "product")
  	add_column("orders", "receipt_name", :string, :after => "sales_receipt")
  	add_column("orders", "account_time", :datetime)
  	add_column("orders", "warehouse_time", :datetime)
  	add_column("orders", "driver_time", :datetime)
  	
  end
end
