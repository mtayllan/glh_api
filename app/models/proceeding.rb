class Proceeding < ApplicationRecord
  belongs_to :patient
  belongs_to :medication

  has_one :defense
  has_one_attached :document
end
