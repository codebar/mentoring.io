class AddUrlTokenToClassifieds < ActiveRecord::Migration
  def change
    add_column :classifieds, :url_token, :string
  end
end
