class SomeOrderChanges < ActiveRecord::Migration
  def up
  	change_column("orders", "account_approval", :boolean)
  	change_column("orders", "warehouse_approval", :boolean)
  	add_column("orders", "driver", :string, :after => "destination")
  	
  end

  def down
  	remove_column("orders", "driver")
  	change_column("orders", "account_approval", :string)
  	change_column("orders", "warehouse_approval", :string)
  end
end
