class SomeOrderChanges < ActiveRecord::Migration
  def up
    'integer USING CAST(column_name AS integer)'
  	change_column("orders", "account_approval", 'boolean USING CAST(account_approval AS boolean)')
  	change_column("orders", "warehouse_approval", 'boolean USING CAST(warehouse_approval AS boolean')
  	add_column("orders", "driver", :string, :after => "destination")
  	
  end

  def down
  	remove_column("orders", "driver")
  	change_column("orders", "account_approval", :string)
  	change_column("orders", "warehouse_approval", :string)
  end
end
