class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :is_admin
      t.boolean :referable
      t.boolean :creatable
      t.boolean :updatable
      t.boolean :deletable

      t.timestamps
    end
  end
end
