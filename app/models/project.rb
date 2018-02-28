class Project < ApplicationRecord
  belongs_to :user
  has_many :donations, dependent: :destroy
  belongs_to :focus_area
  validates :name, presence: true
  validates :description, presence: true
  validates :user, presence: true
  mount_uploader :photo, PhotoUploader
end
