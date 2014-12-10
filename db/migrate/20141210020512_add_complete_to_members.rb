class AddCompleteToMembers < ActiveRecord::Migration
  def change
    add_column :members, :complete, :boolean, default: false, null: false
  end
end
