class AddColumnUnitpriceToOrderitems < ActiveRecord::Migration[6.1]
  def change
    add_column :orderitems, :unit_price, :integer
  end
end
