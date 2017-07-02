class RemoveAgreementFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :agreement 
  end
end
