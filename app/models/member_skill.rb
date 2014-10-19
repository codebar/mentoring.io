class MemberSkill < ActiveRecord::Base

  belongs_to :member
  belongs_to :skill

end
