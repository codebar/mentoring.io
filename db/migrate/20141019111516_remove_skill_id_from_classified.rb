class RemoveSkillIdFromClassified < ActiveRecord::Migration
  def change
    remove_column :classifieds, :skill_id
  end
end
