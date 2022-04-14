class User < ActiveRecord::Base

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

  has_secure_password

  def self.authenticate_with_credentials(email, password)
    converted_email = email.downcase
    user = User.find_by_email(converted_email)

    if user && user.authenticate(password)
      user
    else 
      nil
    end
  end

end
