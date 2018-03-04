require_relative './order.rb'
require_relative './menu.rb'
require_relative './sms.rb'

class Takeaway
  attr_reader :menu, :order, :sms
  def initialize(menu = Menu, order = Order, sms = Sms)
    @menu = menu.new
    @order = order.new
    @sms = sms.new
  end

  def view_menu
    menu.view_menu
  end

  def view_order
    dish_count = Hash.new(0)
    order.basket.each { |v| dish_count[v] += 1 }
    dish_count.each { |k, v| p "#{k[0]} * #{v}" }
    nil
  end

  def check_total
    order.basket.map { |array| array[1] }.inject(:+)
  end

  def place_order
    sms.send_confirmation("
    Thank you. You have ordered #{order.basket.count} dishes for a
    total of £#{check_total}. Your order has been placed and will
    be delivered to you by #{(Time.now + 3600).to_s.split[1]}
    ".gsub(/\s+/, " ").strip)
  end
end
