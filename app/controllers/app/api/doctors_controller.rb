class App::Api::DoctorsController < ApplicationController
  def create
    @doctors = doctors.new(doctors_params)
    if @doctors.save?
      json_response(@doctors)
    else
      @doctors.errors.full_messages.join(';')
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
