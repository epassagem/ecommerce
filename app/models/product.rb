class Product < ActiveRecord::Base
  has_many :line_items
  has_many :lectures
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  mount_uploader :video, ArquivoUploader
  mount_uploader :image_url, ArquivoUploader

  
  def self.latest
    Product.order(:updated_at).last
  end

  private
  
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
