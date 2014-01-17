class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.references :role, index: true
      t.references :user, index: true
      t.references :project, index: true

      t.timestamps
    end
  end
end
