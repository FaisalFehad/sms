class Stock < ApplicationRecord

  belongs_to :admin

  # Capialise item names before saving into db
  before_save { self.name = name.capitalize}

  validates :name, presence: true, length: { in: 2..20}
  validates :description, presence: true, length: { in: 10..200 }
end
