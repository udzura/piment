class CreateEntryHistories < ActiveRecord::Migration
  def change
    create_table :entry_histories do |t|
      t.references :entry, index: true
      t.string :title
      t.string :username
      t.string :password
      t.text :description
      t.integer :serial
      t.integer :parent_history_id

      t.timestamps
    end
  end
end
