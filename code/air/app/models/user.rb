class User < ActiveRecord::Base
  attr_accessible :name, :password_digest

  has_secure_password

  def new_user
    a = User.net
    a.name =
    a.password =
    a.save
  end

  def login_user

  end
end
