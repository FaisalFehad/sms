class AddAdminToStocks < ActiveRecord::Migration[5.1]
  def change
    add_reference :stocks, :admin, foreign_key: true
  end
end
