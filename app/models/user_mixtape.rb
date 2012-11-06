class UserMixtape < ActiveRecord::Base
  attr_accessible :user_id, :mixtape_id

  belongs_to :user
  belongs_to :mixtape
end
