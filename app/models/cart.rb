class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :delete_all

	def add_product(product_id)
		current_item = line_items.find_by(product_id: product_id)
			if current_item.present?
				current_item.quantity += 1
			else
				current_item = line_items.build(product_id: product_id)
			end
		current_item
	end

  # @return [Float] - The sum of the prices of all line items currently in the cart
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
