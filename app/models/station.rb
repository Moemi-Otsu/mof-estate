class Station < ApplicationRecord
  FORM = 2
  # validates :route_name, presence: true
  # validates :station_name, presence: true
  validates :walking_minutes, numericality: { only_integer: true, greater_than: 0 }
  belongs_to :estate, inverse_of: :stations, optional: true, foreign_key: 'estate_id'
end