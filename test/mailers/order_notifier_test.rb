require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "The Store Confirmation", mail.subject
    assert_equal ["email@inter.net"], mail.to
    assert_equal ["email@inter.net"], mail.from
    assert_match(/1 x Programming Ruby 1.9/, mail.body.encoded)
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "The Store Order Shipped", mail.subject
    assert_equal ["email@inter.net"], mail.to
    assert_equal ["email@inter.net"], mail.from
    assert_match(/<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/, mail.body.encoded)
  end

end
