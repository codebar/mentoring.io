class Classified < ActiveRecord::Base
  has_many :classified_skills
  has_many :skills, through: :classified_skills
  has_many :messages

  belongs_to :member

end
