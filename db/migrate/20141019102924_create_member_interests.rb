class CreateMemberInterests < ActiveRecord::Migration
  def change
    create_table :member_interests do |t|
      t.integer :member_id
      t.integer :interest_id

      t.timestamps
    end
  end
end
