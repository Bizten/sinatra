class ClientsController < Sinatra::Base
  configure do
    set :session_secret, 'password_security'
  end
  has_valid_card has_one :card



  class Appointment < ActiveRecord::Base
    belongs_to :client
  end
end
