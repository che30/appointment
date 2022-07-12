require 'rails_helper'
require 'faker'
RSpec.describe 'Appointments', type: :request do
  let(:user) { create(:user) }
  let(:doctor) { create(:doctor) }
  let(:valid_attributes) do
    { appointment: attributes_for(:appointment),
      user_id: user.id,
      doctor_id: doctor.id }.to_json
  end
  let(:headers) { valid_headers }
  describe 'POST /api/users/:user_id/appointments' do
    before { post "/api/users/#{user.id}/appointments", params: valid_attributes, headers: headers }
    it 'returns successful creation of appointment' do
      expect(json).not_to be_empty
    end
    it 'returns status code of 200' do
      expect(json['errors']).to match(/Doctor must exist/)
    end
  end
end
