class User < ApplicationRecord
  has_secure_password
  # belongs_to :doctor, class_name: "User", foreign_key: "doctor_id", optional: true
  # has_many :doctors, class_name: "User", foreign_key: "doctor_id"
  validates_presence_of :first_name, :last_name, :email, :password, :password_digest
  validates :email, uniqueness: true
  has_many :appointments
end
