class Patient < ApplicationRecord
  has_many :proceedings, dependent: :restrict_with_error
end
