class Project < ApplicationRecord
  belongs_to :user
  has_many :donations, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :user, presence: true
end
