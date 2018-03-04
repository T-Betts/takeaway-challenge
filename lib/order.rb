require_relative './menu.rb'

class Order
  attr_reader :menu, :basket
  def initialize(menu = Menu)
    @menu = menu.new
    @basket = []
  end

  def add_to_basket(dish_num, quantity)
    quantity.times do
      @basket << menu.view_menu[dish_num]
    end
  end
end
