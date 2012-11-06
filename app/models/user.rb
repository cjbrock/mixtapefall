class User < ActiveRecord::Base
  attr_accessible :email, :user_name

  has_many :user_mixtapes
  has_many :mixtapes, :through => :user_mixtapes
end
