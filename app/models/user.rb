class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :reviews_id, :products_id
  has_secure_password
  validates_presence_of :password, :on => :create

   has_many :reviews
  has_many :products, :through => :reviews
end

