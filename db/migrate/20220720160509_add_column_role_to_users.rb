class AddColumnRoleToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :boolean
  end
end