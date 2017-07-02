class AddReturnedToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :returned , :boolean, default: false
  end
end
