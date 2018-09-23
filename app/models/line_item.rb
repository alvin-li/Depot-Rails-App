class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  # @return [Float] - The price times quantity of a line item
  def total_price
    product.price * quantity
  end
end
