class Address < ApplicationRecord
  belongs_to :contact
  has_one :country, dependent: :destroy
  
  validates :city, :state, :zip, presence: true
  validates :zip, numericality: true
end