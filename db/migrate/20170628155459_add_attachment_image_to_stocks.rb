class AddAttachmentImageToStocks < ActiveRecord::Migration[5.1]
  def up
    add_attachment :stocks, :image
  end

  def down
    remove_attachment :stocks, :image
  end
end
