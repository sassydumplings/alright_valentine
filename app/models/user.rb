class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :password, :password_confirmation, :email, :kin, :gender, :avatar, :interests, :birthday, :paid_user

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  has_many :messages

end

