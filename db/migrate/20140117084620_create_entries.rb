class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :project, index: true
      t.string :title
      t.string :username
      t.string :password
      t.text :description

      t.timestamps
    end
  end
end
