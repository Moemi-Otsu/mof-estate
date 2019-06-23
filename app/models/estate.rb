class Estate < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true, numericality: { only_integer: true, greater_than: 1 }
  validates :address, presence: true
  validates :property_age, presence: true, numericality: { only_integer: true, greater_than: 1 }
  validates :content, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations
end
