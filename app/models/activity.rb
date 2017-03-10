class Activity < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :people, dependent: :destroy
end
