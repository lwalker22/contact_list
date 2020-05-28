class Country < ApplicationRecord
  belongs_to :address
  validates :name, presence: true
end
