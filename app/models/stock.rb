class Stock < ApplicationRecord

 # Call generate_product_code before create
 before_create :generate_product_code

  # Association
  belongs_to :admin

  # Capialise item names before saving into db
  before_save { self.name = name.capitalize}

  # Validations
  validates :name, presence: true, length: { in: 2..20}
  validates :description, presence: true, length: { in: 10..200 }

  # paperclip
  has_attached_file :image, styles: { image: "700x400>", thumb: "100x100>" },
   default_url: "/images/missing.png"
  #validates_attachment_content_type :article, content_type: /\Aimage\/.*\Z/
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }


protected
  def generate_product_code
    self.product_code = SecureRandom.urlsafe_base64
    generate_token if Stock.exists?(self.product_code)
  end
end
