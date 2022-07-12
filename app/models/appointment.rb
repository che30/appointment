class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :message, presence: true
  validates :date_of_appointment, presence: true
end
