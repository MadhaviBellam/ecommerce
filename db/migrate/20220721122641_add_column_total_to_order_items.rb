class AddColumnTotalToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_column :orderitems, :total, :integer
  end
end
