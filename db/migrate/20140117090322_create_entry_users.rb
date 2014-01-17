class CreateEntryUsers < ActiveRecord::Migration
  def change
    create_table :entry_users do |t|
      t.references :role, index: true
      t.references :user, index: true
      t.references :Entry, index: true

      t.timestamps
    end
  end
end
