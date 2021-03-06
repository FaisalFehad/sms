class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :time
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true

      t.timestamps
    end
  end
end
