class OrderNotifier < ActionMailer::Base
  default from: 'alvin@example.com'

  ##
  # @param [Order] order - The order that was received
  # @return [Mail::Message]
  def received(order)
    @order = order
    mail to: order.email, subject: "Confirmation for Order #{order.id}"
  end

  ##
  # @param [Order] order - The order that was shipped
  # @return [Mail::Message]
  def shipped(order)
    @order = order
    mail to: order.email, subject: "Order Number #{order.id} has been Shipped"
  end
end
