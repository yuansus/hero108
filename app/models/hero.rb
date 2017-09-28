class Hero < ApplicationRecord
  mount_uploader :image,ImageUploader
  has_many :event_records
  has_many :event , through: :event_records
end
