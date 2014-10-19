class CreateVerifiers < ActiveRecord::Migration
  def change
    create_table :verifiers do |t|
      t.references :member, index: true
      t.string :mobile
      t.string :code
      t.timestamp :verified_at

      t.timestamps
    end
  end
end
