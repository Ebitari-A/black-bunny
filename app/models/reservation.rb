class Reservation < ApplicationRecord
  belongs_to :time_slot

  validates :first_name, :last_name, :email, :phone_number, :covers, presence: true
end
