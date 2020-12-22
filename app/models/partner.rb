class Partner < ApplicationRecord
  has_many :appointments, dependent: :destroy
  belongs_to :profession

  validates :name, presence: true
  validates :last_name, presence: true
  validates :second_last_name, presence: true
  validates :rut, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :profession_id, presence: true

end
