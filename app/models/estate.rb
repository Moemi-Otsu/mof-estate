class Estate < ApplicationRecord
  validates :property_name, presence: true
  validates :rent, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :address, presence: true
  validates :property_age, presence: true, numericality: { only_integer: true, greater_than: 0 }
  has_many :stations, inverse_of: :estate, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true, reject_if: :all_blank
end
