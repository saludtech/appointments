class AddForeignKeyToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :appointments, :partners
  end
end
