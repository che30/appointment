class Doctor < ApplicationRecord
    validates_presence_of :first_name, :last_name, :specialty
    validates :email, uniqueness: true
end
