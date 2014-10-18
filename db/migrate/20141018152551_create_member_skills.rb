class CreateMemberSkills < ActiveRecord::Migration
  def change
    create_table :member_skills do |t|
      t.integer :member_id
      t.integer :skill_id
      t.integer :level
    end
  end
end
