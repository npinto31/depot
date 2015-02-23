class Product < ActiveRecord::Base
  validates :title, :description, :img_url, presence: true
  validates :img_url, allow_blank: true, presence: true
  validates_format_of :img_url, :with => %r{\.(gif|jpg|png)\Z}i, :message => 'foo'
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title,  uniqueness: true, length: {minimum: 10}
end

def self.latest
    Product.order(:updated_at).last
  end
