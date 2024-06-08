class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  enum status: { pending: 0, confirmed: 1, cancelled: 2 }
end
