class AddWarehouseCommentToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :warehouse_comment, :text
  end
end
