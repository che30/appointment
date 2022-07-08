class Api::V1::DoctorsController < ApplicationController
  def index
  doctors = Doctor.all
  end
  def create
    @doctors = Doctor.new(doctors_params)
    if @doctors.save
      json_response(@doctors)
    else
      json_response({ errors: @doctors.errors.full_messages.join(';') },
                    :unprocessable_entity)
    end
  end

  private

  def doctors_params
    params.require(:doctor).permit(:first_name,
                                   :last_name,
                                   :email,
                                   :specialty)
  end
end