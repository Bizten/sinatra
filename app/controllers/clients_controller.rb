class ClientsController < Sinatra::Base
  has_valid_card has_one :card

  class Appointment < ActiveRecord::Base
    belongs_to :client
  end
end
