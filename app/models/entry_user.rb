class EntryUser < ActiveRecord::Base
  belongs_to :role
  belongs_to :user
  belongs_to :Entry
end
