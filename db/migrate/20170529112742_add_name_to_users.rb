class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, default: ""
    add_column :users, :school, :string, default: ""
  end
end
