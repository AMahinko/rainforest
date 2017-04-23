class Product < ApplicationRecord
  has_many :reviews

  validates :name, :description, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  def price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end

end
