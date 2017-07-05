class AddProductCodeToStocks < ActiveRecord::Migration[5.1]
  def change
    add_column :stocks, :product_code, :integer
  end
end
