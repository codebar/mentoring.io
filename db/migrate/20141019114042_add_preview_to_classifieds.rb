class AddPreviewToClassifieds < ActiveRecord::Migration
  def change
    add_column :classifieds, :preview, :boolean
  end
end
