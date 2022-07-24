class Removecolumnunitprice < ActiveRecord::Migration[6.1]
  def change
    remove_column :orderitems, :unit_price, :decimal
  end
end
