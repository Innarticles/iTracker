class AlterOrder < ActiveRecord::Migration
  def up
  	add_column("orders", "stage_id", :integer, :after => "product")
  	add_index("orders", "stage_id")
  end

  def down
  	remove_column("orders", "stage_id")
  end
end
