class Ticket < ApplicationRecord
  belongs_to :country

  validates_presence_of :start_time # country presence checking in the :belongs_to
end
