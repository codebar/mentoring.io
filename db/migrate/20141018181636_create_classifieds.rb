class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.integer :member_id
      t.string :description
      t.integer :skill_id
      t.boolean :face_to_face
      t.boolean :remote

      t.timestamps
    end
  end
end
