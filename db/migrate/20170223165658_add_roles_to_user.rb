class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :role, :string, default: "droid", null: false
  end
end
