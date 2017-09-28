class EventRecord < ApplicationRecord
  belongs_to :event
  belongs_to :hero 
end
