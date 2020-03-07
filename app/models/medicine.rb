class Medicine < ApplicationRecord
  has_many :medications, depedent: :destroy
  has_many :diseases, through: :medications

  validates :name, :composition, :description, :group, presence: true

  enum group: { 0: 'Grupo 1A', 1: 'Grupo 1B', 2: 'Grupo 2', 3: 'Grupo 3' }
end
