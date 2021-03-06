class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
    json_response(@appointments)
  end

  def create
    @appointment = current_user.appointments.build(appointment_params)
    if @appointment.save
      json_response(@appointment)
    else
      json_response({ errors: @appointment.errors.full_messages.join(';') },
                    :unprocessable_entity)

    end
  end

  # def edit
  #     @appointment = Appointment.find(params[:id])
  #     @json_response(@appointment)
  # end
  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      json_response({ success: 'updated successfuly' })
    else
      json_response({ errors: @appointment.errors.full_messages }, :unprocessable_entity)
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
  end

  private

  def appointment_params
    params.require(:appointment).permit(:message,
                                        :date_of_appointment,
                                        :time_slot,
                                        :user_id,
                                        :doctor_id)
  end
end
