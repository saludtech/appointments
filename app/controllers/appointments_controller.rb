class AppointmentsController < ApplicationController

    before_action :authenticate_admin!
    
    def create
        @partner = Partner.find(params[:partner_id])
        @appointment = @partner.appointments.create(appointment_params)
        redirect_to partners_path
    end
    
    private
    def appointment_params
        params.require(:appointment).permit(:start_time, :duration)
    end
end
