class Event < ActiveRecord::Base
  validates :description, presence: true
end
