class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.timestamp :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
