class MemberSkills < ActiveRecord::Base

  has_one :member
  has_many :skills
  # has_one :skill -- add once skills table made
end
