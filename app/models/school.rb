class School < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :city, presence: true
  validates :start_year, presence: true
  validates :end_year, presence: true
end
