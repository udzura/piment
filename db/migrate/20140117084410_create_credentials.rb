class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :provider
      t.integer :uid
      t.references :user, index: true

      t.timestamps
    end
  end
end
