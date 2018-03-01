class Project < ApplicationRecord
  belongs_to :user
  has_many :donations, dependent: :destroy
  belongs_to :focus_area
  validates :name, presence: true
  validates :description, presence: true
  validates :user, presence: true
  mount_uploader :photo, PhotoUploader


  def received_donations
    project = self
    # authorize project

    received_sum = 0
    if project.donations.present?
      project.donations.map do |donation|
        if donation.status == "accept"
          received_sum += donation.amount
        end
      end
    end
    received_sum
  end
end
