class Event < ApplicationRecord
  has_many :event_records
  has_many :hero,through: :event_records 
end
