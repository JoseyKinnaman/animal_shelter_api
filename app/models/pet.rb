class Pet < ApplicationRecord
  validates :breed, presence: true
  validates :age, presence: true
  validates :desc, presence: true
  validates :gender, presence: true
  validates :name, presence: true
  validates :species, presence: true
end