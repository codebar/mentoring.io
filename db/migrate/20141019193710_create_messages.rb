class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :member, index: true
      t.references :classified, index: true
      t.text :text
      t.references :message, index: true

      t.timestamps
    end
  end
end
