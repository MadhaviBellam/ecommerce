class AddColumnSubtotalToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :subtotal, :integer
  end
end
