class ProjectUser < ActiveRecord::Base
  belongs_to :role
  belongs_to :user
  belongs_to :project
end
