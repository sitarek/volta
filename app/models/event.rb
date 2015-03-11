class Event < ActiveRecord::Base
  validates :description, presence: true
  has_many :comments, as: :commentable
end
