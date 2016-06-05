class Product < ActiveRecord::Base
  belongs_to :budget
  belongs_to :user
  has_and_belongs_to_many :favourite_lists
end
