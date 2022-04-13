require 'rails_helper'

RSpec.describe Product, type: :model do
  
  before(:each) do
    @category = Category.new(name: "Apparel")
    @product = Product.new(name: "red", price: 30.00, quantity: 3, category: @category) 
  end
  
  describe 'Validations' do
    it "has a name that is not nil" do
      expect(@product.name).not_to be(nil)
    end
    it "has a price that is truthy" do
      expect(@product.price).to be_truthy
    end
    it "has a quantity that exists" do
      expect(@product.quantity).to be_truthy
    end
    it "has a category" do
      expect(@product.category).not_to be(nil)
    end
  end
end
