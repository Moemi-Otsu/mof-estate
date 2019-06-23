class Station < ApplicationRecord
  validates :route_name, presence: true
  validates :station_name, presence: true
  validates :walking_minutes, presence: true, numericality: { only_integer: true, greater_than: 1 }
  belongs_to :estate, optional: true
end