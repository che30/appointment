class App::Api::AppointmentsController < ApplicationController
    def index
        @appointments = current_user.appointments
    end
    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save?
            json_response(@appointment)
        else
            @appointment.errors.full_messages.join(';') 
        end
    end
    def edit
        @appointment = Appointment.find(params[:id])
        @json_response(@appointment) 
    end
    def update
        @appointment = Appointment.find(params[:id])
        if@appointment.update(appointment_params)
            json_response({success: "updated successfuly"})
        else
            json_response({errors: @appointment.errors.full_messages}, :unprocessable_entity)
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
         :time_of_appointment,
        :user_id,:doctor_id)
    end
end
