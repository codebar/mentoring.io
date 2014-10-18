class Member < ActiveRecord::Base

  cattr_reader :expertise_levels
  @@expertise_levels = {
    1 => 'No programming knowledge',
    2 => 'Im familiar with html and css',
    3 => 'I know some basic programming',
    4 => 'Junior developer',
    5 => 'Mid-level developer',
    6 => 'Senior developer'
  }

  # ASSOCIATIONS
  has_many :member_skills
  accepts_nested_attributes_for :member_skills, :allow_destroy => true
  has_many :classifieds
  accepts_nested_attributes_for :classifieds, :allow_destroy => true
  # has_many :skills, :through => :member_skills

  # VALIDATION
  def validate
    validates_presence [:username, :email, :full_name]
  end
end
