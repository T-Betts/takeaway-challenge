require 'menu'

describe Menu do
  subject(:menu) { described_class.new }

  describe '#view_menu' do
    it 'shows takeaway menu' do
      expect(subject.view_menu).to eq({ 1 => ["Lamb Bhuna", 8], 2 => ["Chicken Tikka Masala", 9], 3 => ["Chicken Dilna", 9], 4 => ["Lamb Madras", 10], 5 => ["King Prawn Vindaloo", 11] })
    end
  end
end
