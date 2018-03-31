class Mountain < ApplicationRecord
  belongs_to :user
  has_many :trails
end
