class MakeDeliverBool < ActiveRecord::Migration
  def up
  	change_column("orders", "delivered", 'boolean USING CAST(delivered AS boolean)')
  end

  def down
  	change_column("orders", "delivered", :string)
  end
end
