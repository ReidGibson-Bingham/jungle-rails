class User < ActiveRecord::Base

  # def authenticate_with_credentials(email, password)
  #   @user = User.new(name: params[:name], email: email, password: password, password_confirmation: params[:password_confirmation])
  # end

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_secure_password

end
