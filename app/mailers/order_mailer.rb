class OrderMailer < ActionMailer::Base
  default from: 'alvin@example.com'

  ##
  # @param [Order] order - The order that was received
  # @return [Mail::Message]
  def order_received_email(order)
    @order = order
    mail to: order.email, subject: "Confirmation for Order #{order.id}"
  end

  ##
  # @param [Order] order - The order that was shipped
  # @return [Mail::Message]
  def order_shipped_email(order)
    @order = order
    mail to: order.email, subject: "Order Number #{order.id} has been Shipped"
  end
end
