class AddLocationToMembers < ActiveRecord::Migration
  def change
    add_column :members, :location, :string
  end
end
