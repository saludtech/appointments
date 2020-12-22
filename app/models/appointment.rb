class Appointment < ApplicationRecord
    belongs_to :partner

    validates :start_time, presence: true
    validates :duration, presence: true
end
