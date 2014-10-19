class ClassifiedSkill < ActiveRecord::Base
  belongs_to :classified
  belongs_to :skill
end
