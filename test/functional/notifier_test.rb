require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "Confirmation of online book shopping", mail.subject
    assert_equal ["ss@gmail.com"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded

  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(:one))
    assert_equal "Your order Shipped", mail.subject
    assert_equal ["ss@gmail.com"], mail.to
    assert_equal ["depot@example.com"], mail.from
   # assert_match /<td>Programming Ruby 1.9<\/td>/, mail.body.encoded

  end

end
