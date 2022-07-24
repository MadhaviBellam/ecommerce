class RemoveColumnTotalToOrderitems < ActiveRecord::Migration[6.1]
  def change
    remove_column :orderitems, :total, :decimal
  end
end
