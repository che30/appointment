class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :message, presence: true
  validates :date_of_appointment, uniqueness: true, presence: true
  validates :time_slot, uniqueness: true, presence: true
end
