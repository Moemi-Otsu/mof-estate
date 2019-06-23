class Estate < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :property_age, presence: true
  validates :content, presence: true
  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations
end
