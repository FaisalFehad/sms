class Order < ApplicationRecord

  # Association
  belongs_to :user
  belongs_to :stock

end
