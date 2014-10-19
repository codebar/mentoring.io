class CreateClassifiedSkills < ActiveRecord::Migration
  def change
    create_table :classified_skills do |t|
      t.references :classified, index: true
      t.references :skill, index: true

      t.timestamps
    end
  end
end
