class Contact < ApplicationRecord
  validates :first_name, :last_name, :email, :phone_number, :message, presence: true
  # validates_format_of :email, with: /(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})/
  # validates_format_of :phone_number, with: /(\+44\s?7\d{3}|\(?07\d{3}\)?)\s?\d{3}\s?\d{3}/
end

