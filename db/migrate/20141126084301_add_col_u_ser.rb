class AddColUSer < ActiveRecord::Migration
  def change
  	add_column("users", "username", :string, :after => "email")
  	add_column("users", "role", :string)
  	add_index :users, :username,                unique: true
  end
end
