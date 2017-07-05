class ChangeItemInOrdersToAgree < ActiveRecord::Migration[5.1]
  def up
    rename_column :orders, :time, :agreement
  end
end
