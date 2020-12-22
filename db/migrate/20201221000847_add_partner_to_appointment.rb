class AddPartnerToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :partner
  end
end
