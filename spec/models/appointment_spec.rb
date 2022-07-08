require 'rails_helper'

RSpec.describe Appointment, type: :model do
  it { should validate_presence_of(:message) }
  it { should validate_presence_of(:time_slot) }
  it { should validate_presence_of(:date_of_appointment) }
  it { should belong_to(:user) }
  it { should belong_to(:doctor) }
end
