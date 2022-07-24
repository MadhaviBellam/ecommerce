class Removecolumnsubtotal < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :subtotal, :decimal
  end
end
