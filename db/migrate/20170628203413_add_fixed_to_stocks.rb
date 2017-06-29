class AddFixedToStocks < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :fixed, :boolean, default: false
  end
end
