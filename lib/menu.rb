class Menu
  def initialize
    @menu = { 1 => ["Lamb Bhuna", 8],
             2 => ["Chicken Tikka Masala", 9],
             3 => ["Chicken Dilna", 9],
             4 => ["Lamb Madras", 10],
             5 => ["King Prawn Vindaloo", 11]
             }
  end

  def view_menu
    @menu
  end
end
