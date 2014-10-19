class Classified < ActiveRecord::Base

  has_many :skills
  has_one :member

end
