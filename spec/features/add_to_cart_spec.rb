require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do

  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(1),
        description: Faker::Hipster.paragraph(1),
        image: open_asset('apparel3.jpg'),
        quantity: 10,
        price: 65.99
      )
    end
  end

  scenario "They see product details" do
    # ACT
    visit root_path
    # DEBUG / VERIFY
    within first('.product') do
      click_on 'Add'
    end
    
    save_screenshot
    expect(page).to have_css 'article.product-detail', count: 1
  end

end
