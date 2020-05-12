class Contact < ApplicationRecord
  validates :first_name, :last_name, :email, :phone_number, :message, presence: true
  validates :email, format: { with: /([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})/i }
  validates :phone_number, format: { with: /((\+){1}91){1}[1-9]{1}[0-9]{9}/i }
end

