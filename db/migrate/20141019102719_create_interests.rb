class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :name
      t.boolean :verified
      t.integer :added_by

      t.timestamps
    end
  end
end
