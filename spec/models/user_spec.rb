require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.new(name: "test", email: "test@gmail.com", password: "test1234", password_confirmation: "test1234")
  end

  # before(:each) do
  #   @user.authenticate_with_credentials(@user.email, @user.password)
  # end

  describe 'Validations' do
    it "has a name that is not nil" do
      expect(@user.name).not_to be(nil)
    end
    it "has an email that is not nil" do
      expect(@user.email).not_to be(nil)
    end
    it "has a password that is not nil" do
      expect(@user.password).not_to be(nil)
    end
    it "has a password with a minimum length of 8 characters" do
      expect(@user.password.length).to be >= 8
    end
    it "has a password confirmation that matches the password" do
      expect(@user.password_confirmation).to eq(@user.password)
    end
  end

  # describe '.authenticate_with_credentials' do
  #   it "has an email that is not nil" do
  #     expect(@user.email).not_to be(nil)
  #   end
  #   it "has a password that is not nil" do
  #     expect(@user.password).not_to be(nil)
  #   end
  # end

end

