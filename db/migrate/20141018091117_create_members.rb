class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :full_name
      t.string :username
      t.string :email
      t.string :gender
      t.text :about
      t.integer :expertise
      t.boolean :mentor

      t.timestamps
    end
  end
end
