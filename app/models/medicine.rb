class Medicine < ApplicationRecord
  has_many :medications, depedent: :destroy
  has_many :diseases, through: :medications
end
