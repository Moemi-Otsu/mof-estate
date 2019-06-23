class Station < ApplicationRecord
  validates :route_name, presence: true
  validates :station_name, presence: true
  validates :walking_minutes, presence: true
  belongs_to :estate, optional: true
end